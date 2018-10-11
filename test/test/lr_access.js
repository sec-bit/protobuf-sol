var LRTest = artifacts.require('LRTest');

var soltype = require(__dirname + "/../../src/soltype-pb");
var protobuf = soltype.importProtoFile(require("protobufjs")); //import Solidity.proto to default path

contract('LRTest', function(accounts) {
    it("test ", function() {
	return LRTest.deployed().then(function(instance) {
            c = instance;
	    return c.test();
        }).then(function (tx) {
	    console.log("\x1b[46m%s\x1b[0m", "gas used: " + tx.receipt.gasUsed);
        })
    });
});
