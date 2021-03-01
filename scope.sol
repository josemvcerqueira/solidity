// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract Scope {
    // State Variable
    uint256 public lastChangeState;

    constructor() {
        lastChangeState = 10;
    }

    function getResult() public pure returns (uint256) {
        // Local Variable
        uint256 youCantTouchMe = 1;
        uint256 result = youCantTouchMe + 1;
        return result;
    }
}
