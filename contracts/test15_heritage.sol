// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './Owner.sol';

contract modifiers is Owner {

    uint nombre;

    function settNombre(uint _nombre) public isOwner {
        nombre = _nombre;
    }

    function getNombre() public view isOwner returns(uint) {
        return nombre;
    }
}
