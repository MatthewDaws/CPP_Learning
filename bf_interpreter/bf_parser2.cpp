// bf_parser1.cpp
//
// In this version, we perform a small "optimisation" and coalesce "+++" into
// an internal representation "3 lots of +", and the same for "-<>"
// Also manually handle memory a bit more.

#include "bf_parser2.h"
#include <stack>

// ============================================================================
// Container for Commands: a vector pointers, so we need to do the `delete`ing
// ============================================================================

BFParser::BFParserInstructions::~BFParserInstructions()
{
   // Dtors can't throw, so this is safe.
   for (CommandBase* cmd : commands)
   {
      if ( cmd != nullptr ) { delete cmd; }
   }
}

CommandBase& BFParser::BFParserInstructions::Get(inPtrType index)const
{
   return *commands[index];
}

bool BFParser::BFParserInstructions::AtEnd(inPtrType index)const
{
   return index == commands.size();
}

// Utility function which returns the "repeat count" of the string from `offset`
// e.g. if `offset` points to "+++-" then returns 3, if points to "<+" returns 1.
countType RepeatCount(const std::string& input, decltype(input.size()) offset)
{
   countType count = 0;
   char start = input[offset];
   while ( offset < input.size() and input[offset] == start )
   {
      ++offset;
      ++count;
   }
   return count;
}

// Constructor: parse the input.
BFParser::BFParser(const std::string& input, bool strict)
{
   // Use unique_ptr here, as if we throw later in the parse, want this to be
   // cleaned up for us.  The `BFParserInstructions` class has own destructor
   // which will released Commands we have pushed to it.
   auto instrucs = std::unique_ptr<BFParserInstructions>(new BFParserInstructions);
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
            {
            auto count = RepeatCount(input, offset);
            instrucs->commands.push_back(new CommandIncCell{count});
            offset += count - 1;
            break;
            }
         case '-':
            {
            auto count = RepeatCount(input, offset);
            instrucs->commands.push_back(new CommandDecCell{count});
            offset += count - 1;
            break;
            }
         case '>':
            {
            auto count = RepeatCount(input, offset);
            instrucs->commands.push_back(new CommandIncPtr{count});
            offset += count - 1;
            break;
            }
         case '<':
            {
            auto count = RepeatCount(input, offset);
            instrucs->commands.push_back(new CommandDecPtr{count});
            offset += count - 1;
            break;
            }
         case '.':
            instrucs->commands.push_back(new CommandWrite{});
            break;
         case ',':
            instrucs->commands.push_back(new CommandRead{});
            break;
         case ']':
            if ( loops.empty() )
            {
               throw UnMatchedBracket{};
            }
            instrucs->commands.push_back(new CommandLoopEnd{loops.top()});
            // Also now store correct starting loop
            instrucs->commands[loops.top()] = new CommandLoopBegin{static_cast<inPtrType>(instrucs->commands.size())};
            loops.pop();
            break;
         case '[':
            loops.push(instrucs->commands.size()); // Store where we push the instruction
            instrucs->commands.push_back(nullptr); // Place-holder for later.
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
