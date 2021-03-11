// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract MappingExample {
    // initiate a simple mapping
    mapping(string => uint256) public players;

    // nested mapping
    mapping(string => mapping(string => uint256)) public versions;

    // fill up the mapping with data
    constructor() {
        players["bob"] = 20;
        players["alice"] = 50;
        players["monroe"] = 10;

        versions["alpha"]["jose"] = 100;
    }

    // reading data from a mapping
    function getScore(string memory _player) external view returns (uint256) {
        return players[_player];
    }

    // update data in a mapping
    function updateScore(string memory _player, uint256 _score) external {
        players[_player] = _score;
    }

    // delete data in a mapping
    function deletePlayer(string memory _player) external {
        delete players[_player];
    }

    function getNestedData(string memory _version, string memory _player)
        external
        view
        returns (uint256)
    {
        return versions[_version][_player];
    }
}
