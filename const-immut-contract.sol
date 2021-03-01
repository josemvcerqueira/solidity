// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract ConstImmutExample {
    string constant SAMPLE = "hello world";
    bytes32 constant MY_HASH = keccak256("Cody");

    uint256 constant SHAWN = 2**8 + 8;

    uint256 immutable someNumber;
    uint256 immutable whaleBalance;

    address immutable owner = msg.sender;

    constructor(uint256 _number, address _whale) {
        someNumber = _number;
        whaleBalance = _whale.balance;
    }
}
