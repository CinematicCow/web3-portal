// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal{
  
  uint256 totalWaves;
  // address waver ;


  mapping(address => uint256) public perAddressWave;

  constructor(){
    console.log("Contract Initialized");
  }

  function wave() public{
    totalWaves +=1;
    perAddressWave[msg.sender] +=1;
    console.log("%s has waved!", msg.sender);
  }

  function getTotalWaves() public view returns(uint256){
  console.log("We have %d total waves!", totalWaves);
  return totalWaves;
  }

  function getAddressWaveCount(address _userAddress) public view returns (uint256){
    uint256 count = perAddressWave[_userAddress];
    console.log("user has waved %d times", count);
    return count;
  }
}
