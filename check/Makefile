clean:
	rm -rf *.log *.history *.key
	rm -rf *.lib *.var
	rm -rf *.lib *.shm
	rm -rf sn54ls32_lib
	
set: 
	mkdir sn54ls32.lib
	touch cds.lib
	touch hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo "define sn54ls32_lib ./sn54ls32.lib" >> cds.lib
	echo "define WORK sn54ls32_lib" >> hdl.var

compile: 
	xmvlog -MESS -linedebug SN54LS32
	xmvlog -MESS -linedebug tb_sn54ls32

elab:
	xmelab -MESS -access rwc tb_sn54ls32

sim:
	xmsim -MESS tb_sn54ls32 -gui

all: clean set compile elab sim
