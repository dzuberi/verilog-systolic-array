default: clean compile sim

compile:
	mkdir sim; \
	cd sim; \
    vcs -PP +v2k -sverilog -debug_all -f ../filelist | tee ../vcs.log;\
	cd ..

sim:
	pwd; \
	cd ./sim; \
	./simv

clean:
	rm  -rf vcs.log; \
	rm -rf ./sim
