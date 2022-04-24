// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract testrequire {

    uint nombre;

    function setNombre(uint _nombre) public {

        //ancienne solution !!
        //  if(_nombre == 10) {
        //     revert('le nombre ne peut pas etre egal a 10');
        // }

        require(_nombre != 10, 'le nombre ne peut pas etre egal a 10');
        nombre = _nombre;
    
    }


    function getNombre() public view returns(uint) {
        return nombre;
    }


}