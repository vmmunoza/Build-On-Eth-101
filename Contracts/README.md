---

# Solidity Basic Contracts Repository

## Overview

This repository contains a collection of simple Solidity smart contracts designed to demonstrate frequently repeated commands in Solidity. 
These samples are intended for educational purposes only. Each contract includes comprehensive comments explaining the purpose and functionality of the code.

## Contracts Included

1. **HelloWorld.sol** - Demonstrates how to write a basic smart contract that stores and retrieves a string variable.
2. **Counter.sol** - Implements a simple counter that can be incremented or decremented, showcasing state variable manipulation.
3. **SimpleStorage.sol** - Provides a basic example of storing, updating, and retrieving different types of variables.
4. **SafeSender.sol** - Introduces a simple way to send Ether between accounts, including basic security checks.

## Installation

### Prerequisites

- [Node.js](https://nodejs.org/) (version 12.x or later)
- [npm](https://www.npmjs.com/) (typically comes with Node.js)
- An Ethereum wallet like [MetaMask](https://metamask.io/) installed in your browser.

### Setting Up

1. **Clone the Repository**

   ```bash
   git clone [https://github.com/vmmunoza/Build-On-Eth-101](https://github.com/vmmunoza/Build-On-Eth-101)
   cd Contracts
   ```

2. **Install Dependencies**

   ```bash
   npm install
   ```

3. **Compile the Contracts**

   Use [Truffle](https://www.trufflesuite.com/) or [Hardhat](https://hardhat.org/) to compile the contracts. Ensure you have either of these tools installed, then run:

   For Truffle:
   ```bash
   truffle compile
   ```

   For Hardhat:
   ```bash
   npx hardhat compile
   ```

### Running the Contracts

Deploy the contracts to a local Ethereum blockchain for testing: 
[Ganache](https://www.trufflesuite.com/ganache), 
or to a testnet (Ropsten, Rinkeby, etc.) using Truffle or Hardhat. 
Make sure to follow the respective documentation for instructions on deployment.

## Usage

Each contract can be interacted with using [Truffle](https://www.trufflesuite.com/docs/truffle/getting-started/interacting-with-your-contracts) or [Hardhat](https://hardhat.org/getting-started/#connecting-a-wallet-or-dapp-to-hardhat-network) consoles, or via front-end libraries such as [ethers.js](https://docs.ethers.io/v5/) or [web3.js](https://web3js.readthedocs.io/).

Example of interacting with `HelloWorld.sol` using ethers.js:

```javascript
const { ethers } = require("ethers");

// Connect to the network
let provider = ethers.getDefaultProvider('ropsten');

// Create a signer
let privateKey = 'your-private-key-here';
let wallet = new ethers.Wallet(privateKey, provider);

// Address of the deployed HelloWorld contract
let contractAddress = 'deployed-contract-address-here';

// ABI of the HelloWorld contract
let abi = [/* ABI here */];

// Connect to the contract
let contract = new ethers.Contract(contractAddress, abi, wallet);

// Interacting with the contract
async function sayHello() {
    const message = await contract.getMessage();
    console.log(message);
}
sayHello();
```


## Additional Resources

- [Solidity Documentation](https://docs.soliditylang.org/en/v0.8.11/)
- [Ethereum Development Documentation](https://ethereum.org/en/developers/docs/)
- [Truffle Suite](https://www.trufflesuite.com/docs)
- [Hardhat](https://hardhat.org/getting-started/)

---

