// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract mapping_array_struct {

     struct eleve {
         string nom;
         string prenom;
         uint[] notes;
     }

    mapping(address => eleve) Eleves;

    function addNote(address _eleve, uint _note) public {
        Eleves[_eleve].notes.push(_note);
    }

    function getNotes(address _eleve) public view returns(uint[] memory) {
        return Eleves[_eleve].notes;
    }

    function settNom(address _eleve, string memory _nom) public {
        Eleves[_eleve].nom = _nom;
    }
    function getNom(address _eleve) public view returns(string memory) {
        return Eleves[_eleve].nom;
    }
}