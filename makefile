all:
	mkdir -p build
	cd build && cmake -DCMAKE_BUILD_TYPE=Release -DNCNN_VULKAN=OFF -DNCNN_BUILD_EXAMPLES=ON ..
	cd build && make -j (nproc)
