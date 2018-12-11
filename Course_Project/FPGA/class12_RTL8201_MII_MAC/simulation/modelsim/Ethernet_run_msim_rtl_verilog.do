transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module {C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module/RTL8201_RAM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module {C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module/RTL8201_MII_MAC.v}
vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module {C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module/ARP.v}
vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module {C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module/CRC32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module {C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/module/arp_test.v}

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/testbench {C:/Users/Administrator/Desktop/github_code/Planof2019_half/Course_Project/FPGA/class12_RTL8201_MII_MAC/testbench/arp_test_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  arp_test_tb

add wave *
view structure
view signals
run -all
