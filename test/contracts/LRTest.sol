pragma solidity ^0.4.17;
pragma experimental ABIEncoderV2;

import "./libs/pb/LoopRing_pb.sol";

contract LRTest {
	constructor() public {}

	function genInput() returns (pb_Input.Data input) {
		input.mining.feeRecipient = 0xdeadbeef;
		input.mining.miner = 0xdeadbeef;

		input.orders = new pb_Order.Data[](2);
		input.orders[0].owner = 0xdeadbeef;
		input.orders[0].tokenS = 0xdeadbeef;
		input.orders[0].tokenB = 0xdeadbeef;
		input.orders[0].amountS = 0x1;
		input.orders[0].amountB = 0x1;
		input.orders[0].validSince = 0x1;
		input.orders[0].tokenSpendableS = 0x1;
		input.orders[0].tokenSpendableFee = 0x2;
		input.orders[1].owner = 0xdeadbeef;
		input.orders[1].tokenS = 0xdeadbeef;
		input.orders[1].tokenB = 0xdeadbeef;
		input.orders[1].amountS = 0x1;
		input.orders[1].amountB = 0x1;
		input.orders[1].validSince = 0x1;
		input.orders[1].tokenSpendableS = 0x1;
		input.orders[1].tokenSpendableFee = 0x2;

		input.rings = new pb_Ring.Data[](1);
		input.rings[0].size = 2;
		input.rings[0].orders = new uint[](2);
		input.rings[0].orders[0] = 1;
		input.rings[0].orders[1] = 2;
	}

	function serializeInput() public returns (bytes) {
		return pb_Input.encode(genInput());
	}

	function deserializeInput(bytes input) public returns (bool) {
		pb_Input.Data memory data;
		data = pb_Input.decode(input);
		require(data.mining.miner == 0xdeadbeef);
		return true;
	}
}
