// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract SendMoneyWithApproval
{
    address public sender;
    address payable public receiver;
    address public approver;
    uint public amount;
 
 //function() external payable { }

  function deposit(address _sender, address payable _receiver, address _approver, uint _amount) public payable {
    sender = _sender;
    receiver = _receiver;
    approver = _approver;
    amount = _amount;
  }
  function getBalance() public view returns(uint)
       {
           return (receiver).balance;
       }       

  function viewApprover() external view returns(address) {
    return(approver);
  }
   function approve() public payable returns (bool){  
     receiver.transfer(amount * (1 ether));
     return true;
   }

// function sendAmount() external payable {
//      payable(receiver).transfer(1);
//   }
  
}