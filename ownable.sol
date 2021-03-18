// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract Ownable {
    address payable public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier checkOwnerhip {
        require(msg.sender == owner);
        _;
    }
}
