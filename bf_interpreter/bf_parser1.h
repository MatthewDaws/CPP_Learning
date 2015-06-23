// bf_parser1.h
//
// Implementation of the BF commands, and parser.
// In this version, a tight match between BF syntax and the commands.

#ifndef __BF_PARSER1_HEADER
#define __BF_PARSER1_HEADER

#include "bf.h"
#include <sstream>

// ============================================================================
// The commands
// ============================================================================

class CommandIncCell : public CommandBase
{
public:
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      machine.IncCell();
      return nextInstruction;
   }
   virtual std::string ToString()const
   {
      return "CommandIncCell";
   }
};

class CommandDecCell : public CommandBase
{
public:
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      machine.DecCell();
      return nextInstruction;
   }
   virtual std::string ToString()const
   {
      return "CommandDecCell";
   }
};

class CommandIncPtr : public CommandBase
{
public:
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      machine.IncPtr();
      return nextInstruction;
   }
   virtual std::string ToString()const
   {
      return "CommandIncPtr";
   }
};

class CommandDecPtr : public CommandBase
{
public:
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      machine.DecPtr();
      return nextInstruction;
   }
   virtual std::string ToString()const
   {
      return "CommandDecPtr";
   }
};

class CommandRead : public CommandBase
{
public:
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      machine.Read();
      return nextInstruction;
   }
   virtual std::string ToString()const
   {
      return "CommandRead";
   }
};

class CommandWrite : public CommandBase
{
public:
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      machine.Write();
      return nextInstruction;
   }
   virtual std::string ToString()const
   {
      return "CommandWrite";
   }
};

class CommandLoopBegin : public CommandBase
{
private:
   inPtrType afterEnd;
public:
   CommandLoopBegin(inPtrType afterEnd)
   {
      this->afterEnd = afterEnd;
   }
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      if ( machine.CurrentCell() == 0 )
      {
         return afterEnd;
      }
      return nextInstruction;
   }
   virtual std::string ToString()const
   {
      std::ostringstream sout;
      sout << "CommandLoopBegin: instruction after loop is " << afterEnd;
      return sout.str();
   }
};

class CommandLoopEnd : public CommandBase
{
private:
   inPtrType start;
public:
   CommandLoopEnd(inPtrType start)
   {
      this->start = start;
   }
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction)
   {
      return start;
   }
   virtual std::string ToString()const
   {
      std::ostringstream sout;
      sout << "CommandLoopEnd: paired with loop beginning at " << start;
      return sout.str();
   }
};


// ============================================================================
// The parser
// ============================================================================

class BFParser
{
public:   
   BFParser(const std::string& input, bool strict = true);
   std::shared_ptr<BFInstructions> GetInstructions();
   
   class BFParserException : public std::runtime_error
   {
   public:
      BFParserException(const char* const what) : std::runtime_error(what) {}
   };
   class UnMatchedBracket : public BFParserException
   {
   public:
      UnMatchedBracket() : BFParserException("BFParser:: Closing bracket found without match.") {}
   };
   class OpenLoop : public BFParserException
   {
   public:
      OpenLoop() : BFParserException("BFParser:: Input ended with loop open.") {}
   };
   class SyntaxError : public BFParserException
   {
   public:
      SyntaxError() : BFParserException("BFParser:: Syntax error-- Unexpected character in input.") {}
   };
private:
   class BFParserInstructions : public BFInstructions
   {
   public:
      std::vector<std::unique_ptr<CommandBase>> commands;
      virtual CommandBase& Get(inPtrType index)const;
      virtual bool AtEnd(inPtrType index)const;
   };
   std::shared_ptr<BFInstructions> instructions;
};

#endif // __BF_PARSER1_HEADER