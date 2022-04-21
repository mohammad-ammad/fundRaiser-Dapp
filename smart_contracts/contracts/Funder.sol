//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract Funder 
{
    uint256 public numOfFunders;

    mapping(uint=>address) private funders;

    receive() external payable {}
    
    function transfer() external payable 
    {
        funders[numOfFunders] = msg.sender;
    }

    function withdraw(uint _amount) external 
    {
        require(_amount <= 2000000000000000000,'Cannot transfer more than 2 ether');
        payable(msg.sender).transfer(_amount);
    }
}