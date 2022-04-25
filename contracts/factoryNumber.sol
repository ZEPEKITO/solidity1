// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract NumberFactory {

    Number[] numberSContracts;

    function creatNumberContract() external returns(address) {
        Number n = new Number(100);
        numberSContracts.push(n);
        return address(n);
    }

    function getNumberByConract(Number _contract) external view returns(uint) {
        return _contract.getNumber();
    }

    function setNumberByConract(Number _contract, uint _number) external {
        _contract.setNumber(_number);
    }
}

contract Number {

    uint number;

    constructor(uint _number) {
        number = _number;
    }

    function getNumber() external view returns(uint) {
        return number;
    }

    function setNumber(uint _number) external {
        number = _number;
    }
}