test_setup:
	cd src/soltype-pb && npm install
	cd test && npm install
	cd test/tools/testrpc && npm install

test_on_host:
	make -C test run
npm:
	cd src/soltype-pb && npm run replace-link  && npm publish && npm run recover-link
