This is a fork of [pb3sol](https://github.com/umegaya/pb3sol). See original repo README for more information.

- run ```make test_on_host```. There is a linux64 ```protoc``` binary in ```bin/protoc```, 
  and other binaries could be downloaded via [protobuf](https://github.com/protocolbuffers/protobuf/releases).
- it does:
  - install necessary node module by using npm install
  - compile proto file ```test/proto/LoopRing.proto``` to solidity source
  - run [truffle](http://truffleframework.com/) test at ```test/test/lr_access.js```, which interacts with ```test/contracts/LRTest.sol```
