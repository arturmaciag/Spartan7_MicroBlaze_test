add_files -norecurse ./Spartan7_MicroBlaze_test.sdk/standalone_bsp_0_xgpio_example_1/Debug/standalone_bsp_0_xgpio_example_1.elf
set_property used_in_simulation 0 [get_files ./Spartan7_MicroBlaze_test.sdk/standalone_bsp_0_xgpio_example_1/Debug/standalone_bsp_0_xgpio_example_1.elf]
set_property SCOPED_TO_REF microblaze [get_files -all -of_objects [get_fileset sources_1] {./Spartan7_MicroBlaze_test.sdk/standalone_bsp_0_xgpio_example_1/Debug/standalone_bsp_0_xgpio_example_1.elf}]
set_property SCOPED_TO_CELLS { microblaze_0 } [get_files -all -of_objects [get_fileset sources_1] {./Spartan7_MicroBlaze_test.sdk/standalone_bsp_0_xgpio_example_1/Debug/standalone_bsp_0_xgpio_example_1.elf}]

file copy -force ./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.bit ./bin/bitstream.bit
#file copy -force ./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.bin ./bin/bitstream.bin
write_cfgmem  -format mcs -size 32 -interface SPIx4 -loadbit {up 0x00000000 "./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.bit" } -force -file "./bin/microblaze.mcs"
write_cfgmem  -format bin -size 32 -interface SPIx4 -loadbit {up 0x00000000 "./Spartan7_MicroBlaze_test.runs/impl_1/microblaze_wrapper.bit" } -force -file "./bin/microblaze.bin"