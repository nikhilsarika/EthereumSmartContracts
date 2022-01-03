// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;
contract Counter{
    uint256 value;

    function initailize(uint256 x) public{
        value = x;
    }

    function increment(uint256 x) public{
        value = value+x;
    }

    function decreament(uint256 x) public{
        value = value -x;
    }

    function get() view public returns (uint256){
        return value;
    }
}