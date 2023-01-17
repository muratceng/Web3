pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT

contract FeeCollector{
    //owner address that allow to only owner can withdraw
    address public owner;
    //contract balance
    uint256 public balance;

    constructor(){
        //set owner who deploy the contract
        owner = msg.sender;
    }

    receive() payable external{
        // if eth receive to contract address, it adds to balance
        balance += msg.value;
    }

    function withdraw(uint amount,address payable destAdrr ) public{
        //amount should be less than balance
        require(balance - amount >= 0, "inufficient balance");
        //only owner can withdraw
        require(msg.sender == owner,"just owner can withdraw!");

        //transfer the amount to the destination address
        destAdrr.transfer(amount);
        //eth sent is subtracted from the balance
        balance -= amount;
    }
}