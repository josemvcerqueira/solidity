// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract FirstContract {
    // have a state variable - count
    uint256 count;

    constructor() {
        count = 1;
    }

    // a getter function for that variable
    function getCount() public view returns (uint256) {
        return count;
    }

    // add a number to that variable
    function addNumber(uint256 _number) public {
        count = count + _number;
    }

    // substract from that variable
    function substractNumber(uint256 _number) public {
        count = count - _number;
    }
}
