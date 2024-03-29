#  Smart Contract Development Tutorial

This step-by-step guide will walk you through creating and deploying a simple smart contract on Ethreum.

## Prerequisites
- Node.js installed on your system.
- A code editor like Visual Studio Code.
- Basic understanding of JavaScript and the Ethereum blockchain.
- (TO DO: deploy contract and API key details).

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

The provided Solidity code defines a simple smart contract named `SimpleStorage` on the Ethereum blockchain. Here's a detailed breakdown of what each part of the code does:

2.1. **SPDX License Identifier**:
   ```solidity
   // SPDX-License-Identifier: MIT
   ```
   - This comment line specifies the license under which this smart contract is released. Here, it's the MIT License, a permissive free software license.

2.2. **Version Pragma**:
   ```solidity
   pragma solidity ^0.8.0;
   ```
   - This line specifies the version of the Solidity compiler that should be used to compile this contract. The `^` symbol indicates that the contract is compatible with Solidity version 0.8.0 or any newer version that doesn't break functionality (up to, but not including, version 0.9.0).

2.3. **Contract Declaration**:
   ```solidity
   contract SimpleStorage {
   ```
   - This line declares a new contract named `SimpleStorage`. A contract in Solidity is a collection of code (its functions) and data (its state) that resides at a specific address on the Ethereum blockchain.

2.4. **State Variable**:
   ```solidity
   uint256 private storedData;
   ```
   - This line declares a state variable named `storedData` of type `uint256` (unsigned integer of 256 bits). The `private` keyword means that this variable is not accessible from other contracts. This variable is used to store a numerical value.

2.5. **Set Function**:
   ```solidity
   function set(uint256 x) public {
       storedData = x;
   }
   ```
   - This is a public function named `set` that takes one argument (`x` of type `uint256`).
   - The `public` keyword makes this function callable from outside the contract.
   - The function sets the value of the `storedData` variable to the value of `x`.

2.6. **Get Function**:
   ```solidity
   function get() public view returns (uint256) {
       return storedData;
    }
   ```
   - This is another public function named `get` that doesn't take any arguments.
   - The `view` keyword indicates that the function doesn't modify the state of the contract, meaning it doesn't alter any values or write anything.
   - `returns (uint256)` specifies that this function returns a value of type `uint256`.
   - This function returns the current value of `storedData`.

### What to Expect:

- **Functionality**: This contract essentially acts as a simple storage system on the blockchain. It allows users to store a single number and retrieve it later.

- **Interacting with the Contract**:
  - When someone calls the `set` function with a number, that number is stored in the blockchain's state under this contract's address.
  - The `get` function allows anyone to retrieve the last number stored.

- **Use Case**: This contract is a basic example typically used for educational purposes to demonstrate how state variables, functions, and visibility work in Solidity.

- **Transactions and Gas**: Interacting with this contract (calling its `set` function) would require a transaction on the Ethereum network and therefore cost gas, a fee paid in Ethereum's cryptocurrency, ETH.

This contract serves as a starting point for understanding Ethereum smart contract development. Now let's see how to compile and deploy.


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
The provided code is a test script for a Solidity smart contract, written in JavaScript for use with the Ethereum testing framework Mocha, and the assertion library Chai. It's designed to test the `SimpleStorage` smart contract. Here's a detailed breakdown:

4.1. **Importing Chai**:
   ```javascript
   const { expect } = require("chai");
   ```
   - This line imports the `expect` function from the Chai library. `expect` is used for making assertions about values in your tests.

4.2. **Describe Block**:
   ```javascript
   describe("SimpleStorage", function () {
   ```
   - `describe` is a Mocha function that groups together related tests. Here, it's used to describe a series of tests for the `SimpleStorage` contract.

4.3. **It Block (Test Case)**:
   ```javascript
   it("Should return the new value once it's changed", async function () {
   ```
   - `it` is another Mocha function, used to define an individual test case. This test is titled "Should return the new value once it's changed," indicating what this test will verify.

4.4. **Contract Deployment**:
   ```javascript
   const SimpleStorage = await ethers.getContractFactory("SimpleStorage");
   const simpleStorage = await SimpleStorage.deploy();
   await simpleStorage.deployed();
   ```
   - These lines handle the deployment of the `SimpleStorage` contract for testing.
   - `getContractFactory` is a method from the `ethers` library, used to get an instance of the contract.
   - `deploy` is called on this instance to deploy the contract to the Ethereum test network.
   - `deployed` waits for the contract to be successfully deployed.

4.5. **Setting a Value**:
   ```javascript
   await simpleStorage.set(42);
   ```
   - This line calls the `set` function of the `SimpleStorage` contract with the value `42`. This function is supposed to store the number 42 in the contract's state.

4.6. **Assertion**:
   ```javascript
   expect(await simpleStorage.get()).to.equal(42);
   ```
   - This is the actual test assertion. The `get` function of the contract is called, and its result is expected (asserted) to equal `42`.
   - The `expect...to.equal` syntax is from Chai, and it checks that the value returned by `simpleStorage.get()` is equal to `42`. If it's not, the test will fail.

### What to Expect:

- When this test is run, it will deploy a fresh instance of the `SimpleStorage` contract, set its storage value to `42`, and then retrieve this value to verify that it's stored and retrieved correctly.
- If the `SimpleStorage` contract is working as intended, this test will pass, indicating that the `set` and `get` functions of the contract behave correctly.
- If there's an issue with either function, or the contract's state management, this test will fail, alerting you to the fact that the contract's behavior does not meet the specified expectations. 

This test script is for ensuring that the contract logic performs as expected before deployment to the blockchain.

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

### Additional Notes
- Ensure you have ETH in your test network wallet to pay for gas fees.
- Always test your contracts extensively before deploying to the mainnet.


