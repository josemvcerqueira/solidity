// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract EnumExample {
    // make a Enum
    enum ShirtSize {SMALL, MEDIUM, LARGE}
    ShirtSize size;

    // use a Enum
    // set a default value to Enum
    constructor() {
        size = ShirtSize.MEDIUM;
    }

    // get data from Enum
    function getSize() public view returns (ShirtSize) {
        return size;
    }

    // pass Enum to a function as a parameter
    function setSize(ShirtSize _size) public {
        size = _size;
    }
}
