// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './test_appeleDeFonctionB.sol';


contract contractA {

    address addressB;

    function setAddress(address _addressB) external {
        addressB = _addressB;
    }

    function appelSetNombre(uint _nombre) external {
        interfaceB b = interfaceB(addressB);
        b.setNombre(_nombre);
        
    }

    function appelGetNombre() external view returns(uint) {
        interfaceB b = interfaceB(addressB);
        return b.getNombre(); 
    }
}