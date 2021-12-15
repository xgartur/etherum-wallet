// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MoolahCoin is ERC20Capped,Ownable {
  constructor() ERC20("MoolahCoin", "Moo") ERC20Capped(10000000000) {
  }
  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }
}


// 0x8188eF24403CA69C25D14123D86e8b3c3b040A0a

