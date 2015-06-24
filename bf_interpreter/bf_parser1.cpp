// bf_parser1.cpp
//
// Version 1 of the Parser: a very tight link between BF syntax and
// this implementation.

#include "bf_parser1.h"
#include <stack>

// ============================================================================
// Container for Commands: a vector holding unique_ptr wrappers, so we
// don't have to do any clean-up ourselves.
// ============================================================================

CommandBase& BFParser::BFParserInstructions::Get(inPtrType index)const
{
   return *commands[index];
}

bool BFParser::BFParserInstructions::AtEnd(inPtrType index)const
{
   return index == commands.size();
}

// Constructor: parse the input.
BFParser::BFParser(const std::string& input, bool strict)
{
   // Use unique_ptr here, as if we throw later in the parse, want this to be
   // cleaned up for us.
   auto instrucs = std::make_unique<BFParserInstructions>();
   decltype(input.size()) offset = 0;
   std::stack<inPtrType> loops;
   while ( offset < input.size() )
   {
      switch ( input[offset] )
      {
         case ' ':
         case 9:
         case 10:
         case 13:
            // Whitespace
            break;
         case '+':
            instrucs->commands.push_back(std::make_unique<CommandIncCell>());
            break;
         case '-':
            instrucs->commands.push_back(std::make_unique<CommandDecCell>());
            break;
         case '>':
            instrucs->commands.push_back(std::make_unique<CommandIncPtr>());
            break;
         case '<':
            instrucs->commands.push_back(std::make_unique<CommandDecPtr>());
            break;
         case '.':
            instrucs->commands.push_back(std::make_unique<CommandWrite>());
            break;
         case ',':
            instrucs->commands.push_back(std::make_unique<CommandRead>());
            break;
         case ']':
            if ( loops.empty() )
            {
               throw UnMatchedBracket{};
            }
            instrucs->commands.push_back(std::make_unique<CommandLoopEnd>(loops.top()));
            // Alter starting loop to now point to next instruction
            instrucs->commands[loops.top()] = std::make_unique<CommandLoopBegin>(static_cast<inPtrType>(instrucs->commands.size()));
            loops.pop();
            break;
         case '[':
            loops.push(instrucs->commands.size()); // Store where we push the instruction
            instrucs->commands.push_back(std::unique_ptr<CommandLoopBegin>());
            break;
         default:
            if ( strict )
            {
               throw SyntaxError{};
            }
      }
      ++offset;
   }
   if ( loops.size() !=0 )
   {
      throw OpenLoop{};
   }
   // Make `instructions` the owner of instrucs; will release resources automatically.
   // We need to do this, as the Parser component gives up the pointer to the
   // instructions, so `instructions` may outlive the parser object.
   instructions = std::shared_ptr<BFInstructions>(instrucs.release());
}

std::shared_ptr<BFInstructions> BFParser::GetInstructions()
{
   return instructions;
}
