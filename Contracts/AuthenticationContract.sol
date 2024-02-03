// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleAuth {
    // State variable for storing owner's address
    address public owner;

    // Constructor to set the contract's owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict function access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    // Function to change the owner, restricted to the current owner
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}
