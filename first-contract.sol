// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract FirstContract {
    // have a state variable - count
    uint256 public count = 1;

    // add a number to that variable
    function addNumber(uint256 _number) public {
        count = count + _number;
    }

    // substract from that variable
    function substractNumber(uint256 _number) public {
        count = count - _number;
    }
}
