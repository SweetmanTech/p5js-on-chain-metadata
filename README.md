# Deployed and Verified

- Mumbai Testnet - [0x52e6b7b4f8784512beb0e0a4b1e2214bfc94e0d8](https://mumbai.polygonscan.com/address/0x52e6b7b4f8784512beb0e0a4b1e2214bfc94e0d8#code)

## Verifying

- set your keys from `hardhat.config.js` in `.env`.
- `npx hardhat verify {your_contract_address} --network polygonMumbai {constructor_arguments}`

# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
