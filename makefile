image:
	make -C src image

tsh:
	make -C test shell

test_on_host:
	make -C test run CONTAINER_RUNARG="" INPUT_DIR=`pwd`/test/proto OUTPUT_DIR=`pwd`/test/contracts/libs/pb

test_image:
	make -C test image
