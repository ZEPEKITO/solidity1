// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract modifiers {

    uint nombre;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "not the owner");
        _;
    }

    function settNombre(uint _nombre) public isOwner {
        nombre = _nombre;
    }

    function getNombre() public view isOwner returns(uint) {
        return nombre;
    }
}