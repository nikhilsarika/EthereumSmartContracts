// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;
contract accountsDemo{
    address public whoDeposited;
    uint256 public depositAmount;
    uint256 public accountBalance;

    function deposit() public payable{
        whoDeposited = msg.sender;
        depositAmount = msg.value;
        accountBalance = address(this).balance;
    }
}