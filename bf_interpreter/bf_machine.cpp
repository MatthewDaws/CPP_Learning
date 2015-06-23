// BF "interpreter"

#include "bf.h"

// ============================================================================
// Buffer: the working memory for the BF machine
// ============================================================================

BFBuffer::BFBuffer() : zero{0}, offset{0}, length{16}
{
   buffer.resize(length);
}

const dataType& BFBuffer::operator[](dataPtrType index)const
{
   if ( index < offset || index - offset >= length )
   {
      return zero;
   }
   return buffer[index - offset];
}

dataType& BFBuffer::operator[](dataPtrType index)
{
   GiveAccess(index);
   return buffer[index - offset];
}

void BFBuffer::ReBase(dataPtrType newOffset)
{
   if ( newOffset >= offset ) { return; }
   dataPtrType moved = offset - newOffset;
   buffer.insert(buffer.begin(), moved, 0);
   offset = newOffset;
   length += moved;
}

void BFBuffer::Grow(dataPtrType newLength)
{
   if ( newLength <= length ) { return; }
   buffer.resize(newLength, 0);
   length = newLength;
}

void BFBuffer::GiveAccess(dataPtrType index)
{
   if ( index < offset )
   {
      ReBase(index - 16);
      return;
   }
   if ( index - offset >= length )
   {
      Grow(index - offset + 16);
      return;
   }
}



// ============================================================================
// Machine: The BF machine
// ============================================================================

BFMachine::BFMachine(std::shared_ptr<BFInstructions> commands)
   : dataPtr{0}, inPtr{0}
{
   this->commands = commands;
}

void BFMachine::IncCell()
{
   if ( buffer[dataPtr] == 255 ) { buffer[dataPtr] = 0; return; }
   ++buffer[dataPtr];
}

void BFMachine::DecCell()
{
   if ( buffer[dataPtr] == 0 ) { buffer[dataPtr] = 255; return; }
   --buffer[dataPtr];
}
   
void BFMachine::IncPtr() { ++dataPtr; }

void BFMachine::DecPtr() { --dataPtr; }

dataType BFMachine::CurrentCell()const { return buffer[dataPtr]; }

inPtrType BFMachine::GetInstructionPointer()const { return dataPtr; }

void BFMachine::SetInstructionPointer(inPtrType place)
{
   inPtr = place;
}

void BFMachine::Step()
{
   if ( commands->AtEnd(inPtr) ) { return; }
   inPtr = commands->Get(inPtr).execute(*this, inPtr + 1);
}

void BFMachine::Run()
{
   while ( not commands->AtEnd(inPtr) )
   {
      Step();
   }
}

void BFMachine::SetCurrentCell(dataType value)
{
   buffer[dataPtr] = value;
}

dataType BFMachine::operator[](dataPtrType index)const
{
   return buffer[index];
}


// ============================================================================
// Machine: Concrete version with buffers for input and output
// ============================================================================

BFMachineInternalStorage::BFMachineInternalStorage(std::shared_ptr<BFInstructions> commands)
   : BFMachine{commands}, inputBufferPos{0}
{
}

BFMachineInternalStorage::BFMachineInternalStorage(std::shared_ptr<BFInstructions> commands, const std::string input)
   : BFMachine{commands}, inputBufferPos{0}
{
   for (int x : input)
   {
      if ( x >= 0 and x <=127 ) { inputBuffer.push_back(x); }
      else if ( x >= -128 ) { inputBuffer.push_back(x + 256); }
      else { inputBuffer.push_back(0); }
   }
}

void BFMachineInternalStorage::Write()
{
   outputBuffer.push_back( CurrentCell() );
}

void BFMachineInternalStorage::Read()
{
   if ( inputBufferPos == inputBuffer.size() )
   {
      return;
   }
   SetCurrentCell(inputBuffer[inputBufferPos++]);
}

std::string BFMachineInternalStorage::ToAsciiString()const
{
   std::string output;
   for (auto x : outputBuffer)
   {
      if ( x >= 32 and x < 127 )
      {
         output.push_back(static_cast<char>(x));
      } else {
         output.push_back(' ');
      }
   }
   return output;
}

std::vector<int> BFMachineInternalStorage::GetOutput()const
{
   return outputBuffer;
}