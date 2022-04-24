// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract test_struct {

    struct wallet {
        uint balance;
        uint numPayments;
    }
    mapping(address => wallet) Wallets;

    function getBalance() public view returns(uint) {
        return Wallets[msg.sender].balance;
    }

    function getNumPayements() public view returns(uint) {
        return Wallets[msg.sender].numPayments;
    }
    receive() external payable {
        Wallets[msg.sender].balance += msg.value; 
        Wallets[msg.sender].numPayments += 1;
    }

}