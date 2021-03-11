// SPDX-License-Identifier: GL-3.0

pragma solidity >=0.4.0 <0.9.0;

contract StructExample {
    struct Player {
        string name;
        uint256 score;
    }

    // Create structs
    Player public bob = Player("Bob", 10);
    Player public alice = Player("Alice", 30);
    Player monroe = Player({score: 50, name: "Monroe"});

    // Update structs
    function monroeScoreChange(uint256 _score) external {
        monroe.score = _score;
    }

    // read
    function getMonroeScore() external returns (uint256) {
        return monroe.score;
    }

    // delete
    function bobDelete() external {
        delete bob;
    }
}
