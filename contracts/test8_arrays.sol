//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;

contract arrays {

    uint[] nombre;

    function addValue(uint _value) public {
        nombre.push(value);
    }

    function updatevale(uint _value, uint _index) public {
        nombre[_index] = _value;
    }

    function deleteValue(uint _index) public {
        delete nombre[_index];
    }

    function getValue(uint _idnex) public view returns(uint) {
        return nombre[_index];
    }

    function gettValueX2() public view returns(uint[] memory)
    uint longueur = nombre.lenght;
    uint[] memory nombreX2 = new uint[](longueur)
    for(uint i = 0, i < longueur ; i++) {
        nombreX2[i] = nombre[i] * 2;
        return nombreX2;
    }


 }

// il existe deux types de tableau storege = en dehoors d'une fonction stock dans la blockchaine
// tableau memory = a linterieur d'une fonction 