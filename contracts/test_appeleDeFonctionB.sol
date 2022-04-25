// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface interfaceB {
    function setNombre(uint _nombre) external;
     function getNombre() external view returns(uint);
}

contract contractB {

    uint nombre;

    function setNombre(uint _nombre) external {
        nombre = _nombre;
    }

    function getNombre() external view returns(uint) {
        return nombre; 
    }
   
}