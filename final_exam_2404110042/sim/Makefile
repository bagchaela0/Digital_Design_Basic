clean :
	rm -rf cds.lib hdl.var *.lib *.log *.shm *.key

set :
	mkdir work.lib
	touch cds.lib
	touch hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo "define work_lib work.lib" >>./cds.lib
	echo "define WORK work_lib" >>./hdl.var

compile :
	xmvlog -MESS -linedebug ../src/*.v

elab :
	xmelab -MESS -access +rwc tb_adder

sim :
	xmsim -MESS tb_adder -gui

all : clean set compile elab sim
