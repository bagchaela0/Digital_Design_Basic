clean :
	rm -rf cds.lib hdl.var *.lib *.log *.key *.shm

set :
	mkdir mux4x1.lib
	touch cds.lib
	touch hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo "define mux4x1_lib mux4x1.lib" >>./cds.lib
	echo "define WORK mux4x1_lib"       >>./hdl.var

compile : 
	xmvlog -MESS -linedebug ./*.v

elab :
	xmelab -MESS -access rwc tb_mux4x1

sim : 
	xmsim -MESS tb_mux4x1 -gui

all : clean set compile elab sim
