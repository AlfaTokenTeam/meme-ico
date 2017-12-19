pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MEME is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MEME(address _owner)  UpgradeableToken(_owner) {
    name = "MEME";
    symbol = "MEM";
    totalSupply = 10000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}