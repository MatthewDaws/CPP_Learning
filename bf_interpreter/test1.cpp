// Various tests

#include "bf.h"
#include "bf_parser1.h"

using namespace std;
#include <iostream>


// Test array functionality.

void TestArray()
{
   BFBuffer buffer;
   
   buffer[0] = 1;
   buffer[-5] = 10;
   buffer[10] = 15;
   buffer[10000] = 3;
   
   cout << "Testing array: ";
   cout << (int)buffer[-5] << "," << (int)buffer[0] << "," << (int)buffer[10] << "," << (int)buffer[10000] << endl;
   cout << "Should be 10, 1, 15, 3" << endl;
   for (int i=11; i<10000; ++i)
   {
      if ( buffer[i] != 0 )
      {
         cout << "Returned non-zero!" << endl;
      }
   }
}




// Mock BFInstructions class
// Uses naked new commands, but as this is a test, we'll ignore this.

class BFIMock : public BFInstructions
{
public:
   std::vector<CommandBase*> commands;
   virtual CommandBase& Get(inPtrType index)const
   {
      return *commands[index];
   }
   virtual bool AtEnd(inPtrType index)const
   {
      return index == commands.size();
   }
};


void TestMachine()
{
   auto bfi = std::make_shared<BFIMock>();
   bfi->commands.push_back(new CommandIncCell);
   bfi->commands.push_back(new CommandIncPtr);
   bfi->commands.push_back(new CommandIncCell);
   bfi->commands.push_back(new CommandIncCell);
   bfi->commands.push_back(new CommandIncPtr);
   bfi->commands.push_back(new CommandIncCell);
   bfi->commands.push_back(new CommandIncCell);
   bfi->commands.push_back(new CommandIncCell);

   BFMachineInternalStorage bf{bfi};
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   bf.Step();
   cout << "Internal buffer:" << (int)bf[-1] << " " << (int)bf[0] << " " << (int)bf[1] << " " << (int)bf[2] << endl;
   
   for (CommandBase* cmd : bfi->commands)
   {
      delete cmd;
   }
}



// Test Parser
void TestParser()
{
   string input("+++[>+>++>+++<<<-]");
   auto bfp = BFParser(input);
   cout << "BF: " << input << " gets parsed to: " << endl;
   auto instructions = bfp.GetInstructions();
   inPtrType index = 0;
   while ( !instructions->AtEnd(index) )
   {
      cout << instructions->Get(index).ToString() << endl;
      ++index;
   }
   cout << "Now running..." << endl;
   auto bfMachine = BFMachineInternalStorage(instructions);
   for (int i=0; i<100; ++i)
   {
      bfMachine.Step();
      cout << i << ": ";
      for (int j=-2; j<5; ++j)
      {
         cout << (int)bfMachine[j] << ", ";
      }
      cout << endl;
   }
}


// General tests
void TestAll()
{
   // Hello World
   auto bfp = BFParser("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.");
   BFMachineInternalStorage bfMachine(bfp.GetInstructions());
   bfMachine.Run();
   cout << "Output: '" << bfMachine.ToAsciiString() << "'" << endl;
   auto asInts = bfMachine.GetOutput();
   if ( bfMachine.ToAsciiString() == "Hello World! " and asInts.back() == 10 )
   {
      cout << "   Okay!\n";
   } else {
      cout << "   Not correct: ";
      for (auto x : asInts) { cout << x << ", "; }
   }

   // Random extra characters
   try {
      bfp = BFParser("[]++++++++++[>++++++++++++++++++>+++++++>+<<<-]A;?@![#>>+<<]>[>++<[-]]>.>.");
   }
   catch (BFParser::BFParserException e)
   {
      cout << "Tried non-strict input, got exception '" << e.what() << "'\n";
   }
   bfp = BFParser("[]++++++++++[>++++++++++++++++++>+++++++>+<<<-]A;?@![#>>+<<]>[>++<[-]]>.>.", false);
   bfMachine = BFMachineInternalStorage(bfp.GetInstructions());
   bfMachine.Run();
   cout << "Output: '" << bfMachine.ToAsciiString() << "'" << endl;
   asInts = bfMachine.GetOutput();
   if ( asInts[0] == 'H' and asInts.back() == 10 and asInts.size()==2 )
   {
      cout << "   Okay!\n";
   } else {
      cout << "   Not correct: ";
      for (auto x : asInts) { cout << x << ", "; }
   }
   
   // Input test: echos input to output, stops at reading 0 or EOF
   bfp = BFParser(">+[-<,[.>+<[-]]>]");
   bfMachine = BFMachineInternalStorage(bfp.GetInstructions(), "abcd");
   bfMachine.Run();
   cout << "Output: '" << bfMachine.ToAsciiString() << "'" << endl;
   asInts = bfMachine.GetOutput();
   if ( bfMachine.ToAsciiString() == "abcd" )
   {
      cout << "Okay!" << endl;
   } else {
      cout << "   Not correct: ";
      for (auto x : asInts) { cout << x << ", "; }
   }
   
   // Another input test, which tests the "EOF" handling.  Our version
   // should output "LK\nLK\n"
   bfp = BFParser(">,>+++++++++,>+++++++++++[<++++++<++++++<+>>>-]<<.>.<<-.>.>.<<.");
   bfMachine = BFMachineInternalStorage(bfp.GetInstructions(), "\n");
   bfMachine.Run();
   cout << "Output: '" << bfMachine.ToAsciiString() << "'" << endl;
   asInts = bfMachine.GetOutput();
   if ( bfMachine.ToAsciiString() == "LK LK " and asInts[2] == 10 and asInts[5] == 10 )
   {
      cout << "Okay!" << endl;
   } else {
      cout << "   Not correct: ";
      for (auto x : asInts) { cout << x << ", "; }
   }
   
   // ROT13 example
   bfp = BFParser(","
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>++++++++++++++<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>>+++++[<----->-]<<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>++++++++++++++<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>++++++++++++++<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>>+++++[<----->-]<<-"
      "[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-[>+<-"
      "[>++++++++++++++<-"
      "[>+<-]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]"
      "]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]>.[-]<,]");
   bfMachine = BFMachineInternalStorage(bfp.GetInstructions(), "~mlk zyx");
   bfMachine.Run();
   cout << "Output: '" << bfMachine.ToAsciiString() << "'" << endl;
   asInts = bfMachine.GetOutput();
   if ( bfMachine.ToAsciiString() == "~zyx mlk" )
   {
      cout << "Okay!" << endl;
   } else {
      cout << "   Not correct: ";
      for (auto x : asInts) { cout << x << ", "; }
   }
}

int main()
{
   TestArray();
   TestMachine();
   TestParser();
   TestAll();
   
   return 0;
}