// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
//Main class that will be used to perform operation on our block.
contract SendMoneyApproval
{
    address public sender;
    address public receiver;
    address public approver = 0x0Fea34BCe3448c9BDE53E4250A09A93AF4c24673;

  function deposit(address _sender, address _receiver) external payable {
    sender = _sender;
    receiver = _receiver;
  }

   function approve() external {
    (receiver).transfer(1);
   }
// function sendAmount() external payable {
//      payable(receiver).transfer(1);
//   }
  
}