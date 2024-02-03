// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimplePayment {
    // Event to emit when a payment is received
    event PaymentReceived(address from, uint256 amount);

    // Payable function to receive payments
    receive() external payable {
        emit PaymentReceived(msg.sender, msg.value);
    }

    // Function to withdraw the contract's balance to the owner
    function withdraw(address payable to) public {
        require(to != address(0), "Invalid address");
        require(address(this).balance > 0, "Balance is 0");

        to.transfer(address(this).balance);
    }
}
