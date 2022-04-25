// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Events {

uint[] numbers;
event numberAdded (address _by, uint _nombre);

function addNumber(uint _number) external {
    numbers.push(_number);
    emit numberAdded(msg.sender, _number);
}




}