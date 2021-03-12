// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract ValueTypes {
    uint256[] public x = [1, 2, 3, 4, 5];

    // doubles a value that is passed
    function _changeSomething(uint256[] storage _input)
        internal
        returns (uint256[] memory)
    {
        _input[0] = 42;
        return _input;
    }

    function realTest() external {
        _changeSomething(x);
    }
}
