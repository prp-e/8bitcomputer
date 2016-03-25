class Assembler
 def initialize(asm)
  @asm = asm.split(" ") - [","]
 end

 def OpCode
  if @asm[0] == "ADD"
   opcode = "111"
  elsif @asm[0] == "CMP"
   opcode = "110"
  elsif @asm[0] == "SHL"
   opcode = "101"
  elsif @asm[0] == "SHR"
   opcode = "100"
  elsif @asm[0] == "NOT"
   opcode = "011"
  elsif @asm[0] == "XOR"
   opcode = "010"
  elsif @asm[0] == "OR"
   opcode = "001"
  elsif @asm[0] == "AND"
   opcode = "000"
  else
   opcode = "ERROR"
  end
  @opcode = opcode 
  return @opcode
 end
 def Operands
  @operands = []
 if (@asm[0] != "256" && @asm[1] != "256")
  @operands[0] = ("0" * (8 - @asm[1].to_i.to_s(2).length))+@asm[1].to_i.to_s(2)
  @operands[1] = ("0" * (8 - @asm[2].to_i.to_s(2).length))+@asm[2].to_i.to_s(2)
 end
  return @operands
 end
 def MachineCode
  self.OpCode
  self.Operands
  @machine = "#{@opcode} #{@operands[0]} #{@operands[1]}"
  return @machine 
 end
end
