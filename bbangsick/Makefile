clean :
	rm -rf cds.lib hdl.var *.lib *.log *.key *.shm

set :
	mkdir mux4x1_behav.lib
	touch cds.lib
	touch hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo "define mux4x1_behav_lib mux4x1_behav.lib" >>./cds.lib
	echo "define WORK mux4x1_behav_lib"             >>./hdl.var

compile :
	xmvlog -MESS -linedebug ./*.v

elab :
	xmelab -MESS -access rwc tb_mux4x1_behav

sim :
	xmsim -MESS tb_mux4x1_behav -gui

all : clean set compile elab sim
