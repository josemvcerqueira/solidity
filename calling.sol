// SPDX-License-Identifier: GL-3.0

import "./callable.sol";

pragma solidity >=0.4.0 <0.9.0;

contract Calling {
    address public callAddress;

    function setAddress(address _callAddress) external {
        callAddress = _callAddress;
    }

    function callExternal() external view returns (uint256) {}
}
