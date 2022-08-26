pragma solidity ^0.5.11;
//Main class that will be used to perform operation on our block.
contract MyFirstContract
{
    address payable public receiver;
    function() external payable { }
        function getBalance() public view returns(uint)
        {
            return address(receiver).balance;
        }
        
    function send(address payable _To )public payable returns (bool)
    {
        receiver = _To;
     _To.transfer(msg.value);
     return true;
    }
}