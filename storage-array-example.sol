// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract StorageArray {
    // dynamic array
    uint256[] public numbers;

    // fixed array it has no members
    uint256[3] public fixed_numbers = [5, 6, 9];

    // add elements
    constructor() {
        numbers.push(5);
        numbers.push(6);
        numbers.push(10);
    }

    // update
    function updateArray(uint256 _index, uint256 new_value) external {
        numbers[_index] = new_value;
    }

    // delete
    function deleteArray(uint256 _index) external {
        delete numbers[_index];
    }

    // pass a number to a function and add to each element
    function addNumbers(uint256 _number) external {
        for (uint256 i = 0; i < numbers.length; i++) {
            numbers[i] = numbers[i] + _number;
        }
    }
}
