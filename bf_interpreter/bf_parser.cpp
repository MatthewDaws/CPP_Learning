#include "bf.h"
#include <stack>



CommandBase& BFParser::BFParserInstructions::Get(inPtrType index)const
{
   return *commands[index];
}

bool BFParser::BFParserInstructions::AtEnd(inPtrType index)const
{
   return index == commands.size();
}


template<typename T>
std::unique_ptr<T> make_unique()
{
   return std::unique_ptr<T>{new T};
}

BFParser::BFParser(const std::string& input, bool strict)
{
   BFParserInstructions* instrucs = new BFParserInstructions;
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
            instrucs->commands.push_back(make_unique<CommandIncCell>());
            break;
         case '-':
            instrucs->commands.push_back(make_unique<CommandDecCell>());
            break;
         case '>':
            instrucs->commands.push_back(make_unique<CommandIncPtr>());
            break;
         case '<':
            instrucs->commands.push_back(make_unique<CommandDecPtr>());
            break;
         case '.':
            instrucs->commands.push_back(make_unique<CommandWrite>());
            break;
         case ',':
            instrucs->commands.push_back(make_unique<CommandRead>());
            break;
         case ']':
            if ( loops.empty() )
            {
               throw UnMatchedBracket{};
            }
            instrucs->commands.push_back(std::unique_ptr<CommandLoopEnd>(new CommandLoopEnd{loops.top()} ));
            // Alter starting loop to now point to next instruction
            instrucs->commands[loops.top()] = std::unique_ptr<CommandLoopBegin>(new CommandLoopBegin{static_cast<inPtrType>(instrucs->commands.size())});
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
   instructions = std::shared_ptr<BFInstructions>(instrucs);
}

std::shared_ptr<BFInstructions> BFParser::GetInstructions()
{
   return instructions;
}
