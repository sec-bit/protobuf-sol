PWD:=$(shell pwd)
INPUT_DIR:=${PWD}/proto
OUTPUT_DIR:=${PWD}/contracts/libs/pb
SOLIDITY_PLUGIN:=${PWD}/../src/protoc/plugin/gen_sol.py

define soliditize
/c/local/pb3sol/bin/protoc -I${PWD} -I${PWD}/../src/protoc/include --plugin=protoc-gen-sol=${SOLIDITY_PLUGIN} --sol_out=$2 $1
endef

.PHONY: proto
proto:
	$(call soliditize,${INPUT_DIR}/LoopRing.proto,"gen_runtime=True:${OUTPUT_DIR}")

run: proto
	bash ./tools/run_chain.sh
	truffle test
	kill `cat ./test_chain.pid`
