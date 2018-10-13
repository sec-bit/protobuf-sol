var LRTest = artifacts.require('LRTest');

contract('LRTest', function(accounts) {
    it("test protobuf ", function() {
        var c;
	return LRTest.deployed().then(function(ret) {
	    c = ret;
            return c.serializeInput.call();
        }).then(function (serialized) {
	    console.log("Serialized: \n" + serialized);
	    var cost = 0;
	    for (let i = 0; i < serialized.length; i += 2) {
		if (serialized.slice(i, i + 2) === "00") {
		    cost += 4;
		} else {
		    cost += 68;
		}
	    }
	    console.log("\x1b[46m%s\x1b[0m", "serialized data cost: " + cost);
	    return c.deserializeInput(serialized);
        }).then(function (tx) {
	    console.log("\x1b[46m%s\x1b[0m", "deserialization gas used: " + tx.receipt.gasUsed);
            return c.serializeInput();
        }).then(function (tx) {
	    console.log("\x1b[46m%s\x1b[0m", "serialization gas used: " + tx.receipt.gasUsed);
        });
    });
});
