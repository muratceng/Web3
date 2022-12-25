// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.13 and less than 0.9.0
pragma solidity ^0.8.7;

contract Counter {
    // only positive integers
    uint public count;

    // returns count
    function getCount() public view returns(uint){
        return count;
    }
    //increment to count by 1
    function inc() external{
        count += 1;
    }
    //decrement to count by 1 if count 0, function fail
    function dec() external{
        count -= 1;
    }
}
