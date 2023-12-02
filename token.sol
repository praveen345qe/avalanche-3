// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

    constructor() ERC20("Gaming Token", "GT") Ownable(msg.sender) {
        uint8 tokenDecimals = 0;
        uint256 initialTokenSupply = 300; 

        _mint(_msgSender(), initialTokenSupply * (10**tokenDecimals));
    }

    function mintTokens(address collector, uint256 TKS) public onlyOwner {
        require(TKS > 0);
        require(msg.sender == owner());
        _mint(collector, TKS);
    }

    function burnTokens(uint256 TKS) public {
        require(TKS > 0 );
        require(TKS <= balanceOf(_msgSender()));
        _burn(_msgSender(), TKS);
    }

    function transferTokens(address to, uint256 TKS) public returns (bool) {
        require(to != address(0));
        require(TKS > 0);
        require(TKS <= balanceOf(_msgSender()));
        _transfer(_msgSender(), to, TKS);
        return true;
    }
}
