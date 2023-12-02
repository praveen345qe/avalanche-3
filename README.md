# MyToken Smart Contract

## Overview

The MyToken smart contract is an Ethereum-based ERC-20 token with additional functionalities. It extends the OpenZeppelin ERC20 and Ownable contracts, providing a basic implementation for a gaming token. The contract allows for the minting of new tokens by the owner, burning tokens, and standard ERC-20 token transfers.

## Features

### ERC-20 Compliance

MyToken is compliant with the ERC-20 standard, allowing it to be easily integrated with various decentralized applications (DApps) and exchanges that support this standard.

### Minting

The owner of the contract can mint new tokens using the `mintTokens` function. This function requires specifying the recipient address (`collector`) and the amount of tokens to be minted (`TKS`).

### Burning

Token holders can burn their own tokens using the `burnTokens` function. This function requires specifying the amount of tokens to be burned (`TKS`). Only the owner of the tokens can burn them.

### Token Transfer

The contract supports standard token transfers through the `transferTokens` function. This function requires specifying the recipient address (`to`) and the amount of tokens to be transferred (`TKS`).

## Deployment

The contract is deployed using Solidity version 0.8.0. It inherits from the OpenZeppelin ERC20 and Ownable contracts. During deployment, the owner is set to the deployer's address, and an initial supply of 300 tokens is minted to the owner.

## Usage

### Minting Tokens

The owner can mint new tokens by calling the `mintTokens` function, specifying the recipient's address and the amount of tokens to be minted.

```solidity
function mintTokens(address collector, uint256 TKS) public onlyOwner {
    // Function implementation
}
```

### Burning Tokens

Token holders can burn their own tokens by calling the `burnTokens` function, specifying the amount of tokens to be burned.

```solidity
function burnTokens(uint256 TKS) public {
    // Function implementation
}
```

### Transferring Tokens

Token holders can transfer tokens to other addresses by calling the `transferTokens` function, specifying the recipient's address and the amount of tokens to be transferred.

```solidity
function transferTokens(address to, uint256 TKS) public returns (bool) {
    // Function implementation
}
```

## License

This smart contract is released under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author 

praveen

pp0555319@gmail.com
