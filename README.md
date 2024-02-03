# Ethereum Development Tech Stack

This list outlines a comprehensive tech stack used for Ethereum smart contract and dApp development. It includes information on the tools, languages, and libraries essential for a full development lifecycle.

## Table of Contents
- [Programming Languages](#programming-languages)
- [Development Frameworks](#development-frameworks)
- [Testing Frameworks](#testing-frameworks)
- [Front-end Development](#front-end-development)
- [Wallet Integration](#wallet-integration)
- [Deployment and Monitoring](#deployment-and-monitoring)
- [Version Control](#version-control)
- [IDEs and Text Editors](#ides-and-text-editors)
- [Smart Contract Auditing Tools](#smart-contract-auditing-tools)
- [Package Managers](#package-managers)

## Programming Languages
- **Solidity**: The primary language for writing Ethereum smart contracts. Solidity is a statically-typed, contract-oriented language specifically designed for creating contracts on the Ethereum Virtual Machine (EVM).
- **Vyper (Optional)**: An alternative to Solidity, Vyper focuses on security and simplicity, with a syntax similar to Python. It's aimed at reducing risks and increasing the readability of smart contracts.

## Development Frameworks
- **Hardhat**: A development environment for Ethereum that facilitates building, testing, and deploying. It includes built-in support for Hardhat Network, a development network designed for testing.
- **Truffle**: Offers a suite of tools for smart contract compilation, automated contract testing, and network management. Truffle also integrates with other tools like Ganache for local blockchain simulation.
- **Foundry**:  a web3 development framework written in Rust. It's designed to be fast, modular, and portable, providing tools for developing and deploying smart contracts on EVM-compatible blockchains. These tools include a command-line interface, a development environment, and a testing framework. 


## Testing Frameworks
- **Mocha**: A feature-rich JavaScript test framework for asynchronous testing, making it ideal for testing smart contracts. It runs on Node.js and provides a robust and flexible structure for writing and organizing tests.
- **Chai**: An assertion library used with Mocha to write more readable tests. Chai provides various interfaces (like `expect`, `should`, and `assert`) that allow developers to express conditions that a test should meet.

## Front-end Development
- **React.js**: A JavaScript library for building user interfaces, particularly known for its component-based architecture. It's widely used for creating interactive UIs for dApps.
- **Vue.js**: An alternative to React, Vue.js is a progressive framework for building user interfaces, known for its simplicity and flexibility.
- **Web3.js**: A collection of libraries allowing you to interact with a local or remote Ethereum node using HTTP, IPC, or WebSocket. It's essential for sending transactions, interacting with smart contracts, and reading blockchain data.
- **ethers.js**: An alternative to Web3.js, ethers.js is a lightweight library that aims to be a comprehensive toolset for interacting with the Ethereum blockchain.

## Wallet Integration
- **MetaMask**: A crypto wallet and gateway to blockchain apps. MetaMask allows users to interact with Ethereum dApps directly from their browser.

## Deployment and Monitoring
- **Infura**: Provides Ethereum API access through HTTPS and WebSocket protocols. Infura is crucial for deploying to and interacting with the Ethereum network, especially for applications not running a full node.
- **Alchemy**: Similar to Infura, Alchemy offers tools and APIs for Ethereum development, including features for monitoring and analytics.

## Version Control
- **Git**: Essential for tracking changes in your project, collaborating with other developers, and managing different versions of your codebase.

## IDEs and Text Editors
- **Remix IDE**: A powerful, open-source tool that helps you write Solidity contracts straight from the browser. It is designed to be easy to use and provide quick feedback.
- **Visual Studio Code**: A versatile code editor with support for Solidity syntax highlighting, debugging, and other extensions useful for Ethereum development.

## Smart Contract Auditing Tools
- **MythX**: A security analysis API for Ethereum smart contracts, detecting security vulnerabilities.
- **Slither**: A Solidity static analysis framework, capable of identifying vulnerabilities and suggesting improvements.

## Package Managers
- **npm**: A package manager for JavaScript, used to install and manage project dependencies.
- **yarn**: An alternative to npm, offering faster package installation and more efficient dependency management.

---

Check some sample contracts [here](https://github.com/vmmunoza/Build-On-Eth-101/tree/main/Contracts)

---
#### Note: things I need to add here as well:
- Deploy contract.
- API and connection details.
