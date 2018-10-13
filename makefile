test_setup:
	cd test && npm install
	cd test/tools/testrpc && npm install

test_on_host: test_setup
	make -C test run
