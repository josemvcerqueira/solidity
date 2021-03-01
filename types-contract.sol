// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract TypesContract {
    // string type
    string public myString = "hello world";

    // boolean type
    bool public myBool = true;

    // integer type
    // int8 int16 int32
    int256 public myInt = -7;

    // unisgned integers, it has no signs
    // uint8 int16 uint32
    uint256 public myUint = 100;

    // just raw address with 0x infront of it
    address constant WETH = 0x4cbe411A78ba5016F6e2e84e8AA3Bb0Af9A5B66F;

    function retrieve() public pure returns (address) {
        return WETH;
    }
}
