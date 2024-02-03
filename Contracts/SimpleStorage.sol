// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // State variable to store a number
    uint256 private storedData;

    // Function to store a number
    function set(uint256 x) public {
        storedData = x;
    }

    // Function to retrieve the stored number
    function get() public view returns (uint256) {
        return storedData;
    }
}
