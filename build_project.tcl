open_project ./Spartan7_MicroBlaze_test.xpr
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
file copy -force ./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.sysdef ./Spartan7_MicroBlaze_test.sdk/microblaze_wrapper.hdf
#file copy -force ./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.bit ./bin/bitstream.bit
#file copy -force ./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.bin ../bin/bitstream.bin
#write_cfgmem  -format mcs -size 32 -interface SPIx4 -loadbit {up 0x00000000 "./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.bit" } -force -file "./bin/microblaze.mcs"