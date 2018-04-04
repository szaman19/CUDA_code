all: hello_world.cu
	nvcc hello_world.cu
run: all
	./a.out
dc:dc-compile
	./Device_Check

dc-compile:device_check.cu
	nvcc -o Device_Check device_check.cu
