vsim -gui work.processor
# vsim -gui work.processor 
# Start time: 20:01:04 on Jun 12,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.processor(my_processor)
# Loading work.mux2x1(my_mux2x1)
# Loading work.pc_register(my_pc)
# Loading work.reg_32(a_reg_32)
# Loading work.instructionmemory(arch_instructionmemory)
# Loading work.add_to_pc(my_add_to_pc)
# Loading work.if_id_stage(a_if_id_stage)
# Loading work.if_id_reg(a_if_id_reg)
# Loading work.registerfile(a_registerfile)
# Loading work.decoder(a_decoder)
# Loading work.my_ndff(a_my_ndff)
# Loading work.tristatebuffer(a_tristatebuffer)
# Loading work.controlunit(arch)
# Loading work.id_ex_stage(a_id_ex_stage)
# Loading work.id_ex_reg(a_id_ex_reg)
# Loading work.alu(arch)
# Loading work.flag_register(a_flag_register)
# Loading work.reg_3(a_reg_3)
# Loading work.ex_mem_stage(a_ex_mem_stage)
# Loading work.ex_mem_reg(a_ex_mem_reg)
# Loading work.mem_we_stage(a_mem_we_stage)
# Loading work.mem_we_reg(a_mem_we_reg)
add wave -position insertpoint  \
sim:/processor/clk \
sim:/processor/rst \
sim:/processor/INPort \
sim:/processor/OUTPort
add wave -position insertpoint  \
sim:/processor/StackPointer
add wave -position insertpoint  \
sim:/processor/Instruction
add wave -position insertpoint  \
sim:/processor/ALUResult
add wave -position insertpoint  \
sim:/processor/CarryFlag \
sim:/processor/NegativeFlag \
sim:/processor/ZeroFlag
add wave -position insertpoint  \
sim:/processor/Reg_File/qRegister0 \
sim:/processor/Reg_File/qRegister1 \
sim:/processor/Reg_File/qRegister2 \
sim:/processor/Reg_File/qRegister3 \
sim:/processor/Reg_File/qRegister4 \
sim:/processor/Reg_File/qRegister5 \
sim:/processor/Reg_File/qRegister6 \
sim:/processor/Reg_File/qRegister7
mem load -filltype value -filldata 000A -fillradix hexadecimal /processor/Instr/ram(0)
mem load -filltype value -filldata 3A00 -fillradix hexadecimal /processor/Instr/ram(10)
mem load -filltype value -filldata 3B00 -fillradix hexadecimal /processor/Instr/ram(11)
mem load -filltype value -filldata 3C00 -fillradix hexadecimal /processor/Instr/ram(12)
mem load -filltype value -filldata 9101 -fillradix hexadecimal /processor/Instr/ram(13)
mem load -filltype value -filldata 0005 -fillradix hexadecimal /processor/Instr/ram(14)
mem load -filltype value -filldata 8100 -fillradix hexadecimal /processor/Instr/ram(15)
mem load -filltype value -filldata 8200 -fillradix hexadecimal /processor/Instr/ram(16)
mem load -filltype value -filldata 8900 -fillradix hexadecimal /processor/Instr/ram(17)
mem load -filltype value -filldata 8A00 -fillradix hexadecimal /processor/Instr/ram(18)
mem load -filltype value -filldata 3D00 -fillradix hexadecimal /processor/Instr/ram(19)
mem load -filltype value -filldata A2A1 -fillradix hexadecimal /processor/Instr/ram(20)
mem load -filltype value -filldata 0200 -fillradix hexadecimal /processor/Instr/ram(21)
mem load -filltype value -filldata A1A1 -fillradix hexadecimal /processor/Instr/ram(22)
mem load -filltype value -filldata 0202 -fillradix hexadecimal /processor/Instr/ram(23)
mem load -filltype value -filldata 9BA1 -fillradix hexadecimal /processor/Instr/ram(24)
mem load -filltype value -filldata 0202 -fillradix hexadecimal /processor/Instr/ram(25)
mem load -filltype value -filldata 9CA1 -fillradix hexadecimal /processor/Instr/ram(26)
mem load -filltype value -filldata 0200 -fillradix hexadecimal /processor/Instr/ram(27)
mem load -filltype value -filldata 2400 -fillradix hexadecimal /processor/Instr/ram(28)
force -freeze sim:/processor/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/processor/rst 1 0
run
force -freeze sim:/processor/rst 0 0
force -freeze sim:/processor/INPort 00000019 0
run
force -freeze sim:/processor/INPort 0000FFFF 0
run
force -freeze sim:/processor/INPort 0000F320 0
run
run
run
run
force -freeze sim:/processor/INPort 00000010 0
run
run
run
run
run




