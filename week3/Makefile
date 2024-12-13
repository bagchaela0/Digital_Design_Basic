clean : 
	rm -rf xcelium.d *.log *.history *.key
	rm -rf worklib cds.lib hdl.var
	rm -rf *.lib *shm

set : 
	mkdir ./worklib
	touch ./cds.lib
	touch ./hdl.var
	echo "define Homework_lib ./worklib" >> cds.lib
	echo "define WORK Homework_lib" >> hdl.var

compile : 
	echo
	xmvlog -MESS -linedebug ./*.v
	echo

elab : 
	echo
	xmelab -MESS -access rwc tb_sn74ls11
	echo

sim : 
	echo
	xmsim -MESS tb_sn74ls11 -gui
	echo

all : clean set compile elab sim 


