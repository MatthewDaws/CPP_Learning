// BF "interpreter", though some parsing is done at load time.
//
// Word size is 8 bits, from 0 to 255 inclusive
// If reading from standard input (or pipe) then blocks until can read.
// If reading from a file, and EOF is reached, a "read" operation is a NOP.

#ifndef __BF_HEADER
#define __BF_HEADER

#include <vector>
#include <memory>
#include <string>
#include <stdexcept>
#include <iostream>

// ============================================================================
// Buffer: the working memory for the BF machine
// ============================================================================

using dataType = unsigned char;
using dataPtrType = int;

class BFBuffer
{
private:
   std::vector<dataType> buffer;
   dataType zero;
   dataPtrType offset, length;
   void ReBase(dataPtrType newOffset);
   void Grow(dataPtrType newLength);
   void GiveAccess(dataPtrType index);
public:
   BFBuffer();
   const dataType& operator[](dataPtrType index)const;
   dataType& operator[](dataPtrType index);
};

// ============================================================================
// Machine: The BF machine
// ============================================================================

using inPtrType = unsigned int;

class CommandBase; // Forward declaration

// Abstract base classes for Instruction storing7
class BFInstructions
{
public:
   virtual ~BFInstructions() {}
   virtual CommandBase& Get(inPtrType index)const = 0;
   virtual bool AtEnd(inPtrType index)const = 0;
};

// ABC for the machine: `Read` and `Write` methods not implemented.
class BFMachine
{
public:
   BFMachine(std::shared_ptr<BFInstructions> commands);
   virtual ~BFMachine() = default;
   void IncCell();
   void DecCell();
   void IncPtr();
   void DecPtr();
   virtual void Write() = 0;
   virtual void Read() = 0;
   dataType CurrentCell()const;
   inPtrType GetInstructionPointer()const;
   void SetInstructionPointer(inPtrType place);
   void Step();
   void Run();
   dataType operator[](dataPtrType index)const;
protected:
   void SetCurrentCell(dataType value);
private:
   BFBuffer buffer;
   std::shared_ptr<BFInstructions> commands;
   dataPtrType dataPtr;
   inPtrType inPtr;
};

// Concrete overload which uses `std::vector`s to store input and output
class BFMachineInternalStorage : public BFMachine
{
public:
   BFMachineInternalStorage(std::shared_ptr<BFInstructions> commands);
   BFMachineInternalStorage(std::shared_ptr<BFInstructions> commands, const std::string input);
   virtual void Write();
   virtual void Read();
   std::string ToAsciiString()const;
   std::vector<int> GetOutput()const;
private:
   std::vector<dataType> inputBuffer;
   decltype(inputBuffer.size()) inputBufferPos;
   std::vector<int> outputBuffer;
};

// ============================================================================
// The various commands.  Here is just the ABC.
//
// Contains a ToString method (for debugging, displaying programmes etc.)
// and `execute(machine, nextInstruction)` which should be passed a BFMachine
// object (which will have its state mutated) and `nextInstruction` which is
// a "pointer" to the next instruction.  Returns the next actual instruction
// to execute.  This set-up allows loop commands to only store a "pointer" to
// their jump target; I guess this resembles x86 assembler, though the decision
// was one of storing the minimum needed information.
// ============================================================================

class CommandBase
{
public:
   virtual ~CommandBase() {}
   virtual inPtrType execute(BFMachine& machine, inPtrType nextInstruction) = 0;
   virtual std::string ToString()const { return std::string("CommandBase()"); }
};

#endif // __BF_HEADER
