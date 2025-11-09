prepare:#creates a target, called by make <target_name>
	rm -rf build
	mkdir build
cmaker:
	cd build	&&\
	cmake .. -DCOMPILE_EXECUTABLE=ON  &&\
	cmake --build .	&&\
	./app/Exec