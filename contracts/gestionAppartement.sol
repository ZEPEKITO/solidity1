// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './Owner.sol';

contract gestionAppartement is Owner {

    enum typeBien {terrain, appartement, maison}

    struct bien {
        uint id;
        string name;
        uint price;
        typeBien _typeBien;
    }

    mapping (address => bien[]) Possessions;

    uint compteur;

    function addBien(address _proprietaire, string memory _name, uint _price, typeBien _typeBien) public isOwner {
        require(_price > 1000, "le bien doit couter plus de 1000 wei");
        require(uint(_typeBien) >= 0, "le type de bien doit etre compris entre 0 et 2");
        require(uint(_typeBien) <= 0, "le type de bien doit etre compris entre 0 et 2");
        Possessions[_proprietaire].push(bien(compteur, _name, _price, _typeBien));
        compteur++;
    }

    function getBiens(address _proprietaire) public view isOwner returns(bien[] memory) {
        return Possessions[_proprietaire];
    }

    function getNombreBien(address _proprietaire) public view isOwner returns(uint) {
        return Possessions[_proprietaire].length;
    }

    function getMesbien() public view returns(bien[] memory) {
        return Possessions[msg.sender];
    }
}