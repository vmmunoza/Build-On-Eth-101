# Ethereum Smart Contract Development Tutorial

This step-by-step guide will walk you through creating and deploying a simple Ethereum smart contract.

## Prerequisites
- Node.js installed on your system.
- A code editor like Visual Studio Code.
- Basic understanding of JavaScript and the Ethereum blockchain.

## Step 1: Setting Up Your Project
First, we'll set up a new Node.js project and install Hardhat.

1. Create a new directory for your project and navigate into it:
   ```sh
   mkdir MyEthereumProject
   cd MyEthereumProject
   ```

2. Initialize a new Node.js project:
   ```sh
   npm init -y
   ```

3. Install Hardhat:
   ```sh
   npm install --save-dev hardhat
   ```

4. Create a Hardhat project:
   ```sh
   npx hardhat
   ```
   Follow the prompts to create a basic sample project.

## Step 2: Writing the Smart Contract
We will write a simple smart contract in Solidity.

1. Navigate to the `contracts` folder in your project.

2. Create a new file named `SimpleStorage.sol`.

3. Add the following Solidity code to `SimpleStorage.sol`:
   ```solidity
   // SPDX-License-Identifier: MIT
   pragma solidity ^0.8.0;

   contract SimpleStorage {
       uint256 private storedData;

       function set(uint256 x) public {
           storedData = x;
       }

       function get() public view returns (uint256) {
           return storedData;
       }
   }
   ```

## Step 3: Compiling the Contract
Compile your contract using Hardhat.

1. In your project root, run:
   ```sh
   npx hardhat compile
   ```

## Step 4: Writing Tests
Write tests for your contract.

1. Navigate to the `test` folder.

2. Create a test file `SimpleStorageTest.js`.

3. Add the following test code:
   ```javascript
   const { expect } = require("chai");

   describe("SimpleStorage", function () {
     it("Should return the new value once it's changed", async function () {
       const SimpleStorage = await ethers.getContractFactory("SimpleStorage");
       const simpleStorage = await SimpleStorage.deploy();
       await simpleStorage.deployed();

       await simpleStorage.set(42);
       expect(await simpleStorage.get()).to.equal(42);
     });
   });
   ```

## Step 5: Running Tests
Ensure your contract works as expected by running the tests.

1. Run the test with:
   ```sh
   npx hardhat test
   ```

## Step 6: Deploying the Contract
Deploy your contract to a test network.

1. Update the `hardhat.config.js` file to include network configurations. (You can use networks like Rinkeby or Ropsten and will need to get an API key from Infura or Alchemy and set up a wallet provider.)

2. Write a deployment script in the `scripts` folder.

3. Deploy using:
   ```sh
   npx hardhat run scripts/deploy.js --network rinkeby
   ```

## Step 7: Interacting with the Deployed Contract
After deployment, interact with your contract using ethers.js or a frontend library.

## Additional Notes
- Ensure you have ETH in your test network wallet to pay for gas fees.
- Always test your contracts extensively before deploying to the mainnet.

* You've now set up, written, tested, and deployed a simple Ethereum smart contract! *

