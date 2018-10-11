pragma solidity ^0.4.17;

import "./libs/pb/LoopRing_pb.sol";

contract LRTest {
	constructor() public {}

	function test() public returns (bytes) {
	    pb_Input.Data memory input;
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

	    return pb_Input.encode(input);
	    /* bytes memory b = pb_Input.encode(input); */

	    /* pb_Input.Data memory input2; */

	    /* input2 = pb_Input.decode(b); */
	}
}
