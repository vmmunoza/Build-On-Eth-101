// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    // State variable to keep track of the count
    uint256 public count = 0;

    // Function to increment the count by 1
    function increment() public {
        count += 1;
    }

    // Function to decrement the count by 1
    function decrement() public {
        require(count > 0, "Count is already zero");
        count -= 1;
    }
}
