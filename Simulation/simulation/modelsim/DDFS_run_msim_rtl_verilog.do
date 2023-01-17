transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation {C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation/chirp.sv}
vlog -sv -work work +incdir+C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation {C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation/sine_wave_lut_8bit.sv}
vlog -sv -work work +incdir+C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation {C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation/time_base_generation.sv}
vlog -sv -work work +incdir+C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation {C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation/phase_accumulator_16bit.sv}

vlog -sv -work work +incdir+C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation {C:/Jason/EIT/Semester_02/02_ESPS/Lab/Simulation/chirp_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  chirp_tb

add wave *
view structure
view signals
run -all
