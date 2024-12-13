clean:
	rm -rf *.log *.key *.lib *.var

set:   
	touch cds.lib 
	echo "define MUX_12X2_lib ./worklib" >> cds.lib
	touch hdl.var
	echo "define WORK MUX_12X2_lib" >> hdl.var

compile:
	xmvlog -MESS -linedebug ./*.v

elab: 
	xmelab -MESS -access rwc tb_MUX_12X2

sim : 
	xmsim tb_MUX_12X2 -gui

all: clean set compile elab sim
