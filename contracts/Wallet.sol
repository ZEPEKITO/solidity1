// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


import './Owner.sol';

contract Wallet is Owner {
    
    struct Payment {
        uint amount; 
        uint timestamp; 
    }
    
    struct Balance {
        uint totalBalance;
        uint numPayments;
        mapping(uint => Payment) payments;
    }
    
    mapping(address => Balance) Wallets; 

    receive() external payable {
        Payment memory thisPayment = Payment(msg.value, block.timestamp);
        Wallets[msg.sender].totalBalance += msg.value;
        Wallets[msg.sender].payments[Wallets[msg.sender].numPayments] = thisPayment;
        Wallets[msg.sender].numPayments++;
        
    }
    
    function getBalance() public isOwner view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawAllMoney(address payable _to) public {
        uint amount = Wallets[msg.sender].totalBalance;
        Wallets[msg.sender].totalBalance = 0;
        _to.transfer(amount);
        
    }
    
    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= Wallets[msg.sender].totalBalance, "Not enought funds");
        Wallets[msg.sender].totalBalance -= _amount;
        _to.transfer(_amount);
    }
 
}