// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract Ownable {
    address payable public owner;

    constructor() {
        owner = msg.sender;
    }
}

contract ParkingLot {
    enum LotStatuses {VACANT, FULL}
    LotStatuses public currentStatus;

    // event declaration
    event Occupy(address _occupant, uint256 _value);

    constructor() {
        owner = msg.sender;
        currentStatus = LotStatuses.VACANT;
    }

    modifier checkVacancy {
        require(
            currentStatus == LotStatuses.VACANT,
            "Current Status is not vacant"
        );
        _;
    }

    modifier checkCost(uint256 _amount) {
        require(msg.value >= _amount, "Not enough ether to park here");
        _;
    }

    function park() external payable checkVacancy checkCost(10 ether) {
        currentStatus = LotStatuses.FULL;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
