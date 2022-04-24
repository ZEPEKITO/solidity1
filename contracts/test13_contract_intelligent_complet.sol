// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract GestionnaireEleve {

    address owner;

    struct Grade {
        string subject;
        uint grade;  
    }

    struct Student {
        string firstName;
        string lastName;
        uint numberOfGrades;
        mapping(uint => Grade) grades;
    }

    mapping(address => Student) students;

    constructor() {
        owner = msg.sender;
    }

    function addStudent(address _studentsAddress, string memory _firstName, string memory _lastName) public {
        require(msg.sender == owner, 'not the owner');
        bytes memory firstNameOfAddress = bytes(students[_studentsAddress].firstName);
        require(firstNameOfAddress.length == 0, "Existe deja");
        students[_studentsAddress].firstName = _firstName;
        students[_studentsAddress].lastName = _lastName;
    }

    function addGrade(address _studentsAddress, string memory _subject, uint _grade) public {
        require(msg.sender == owner, 'not the owner');
        bytes memory firstNameOfAddress = bytes(students[_studentsAddress].firstName);
        require(firstNameOfAddress.length > 0, "il faut cree l'eleve");
        students[_studentsAddress].grades[students[_studentsAddress].numberOfGrades].grade = _grade;
        students[_studentsAddress].grades[students[_studentsAddress].numberOfGrades].subject = _subject;
        students[_studentsAddress].numberOfGrades++;
    }

    function getGrades(address _studentsAddress) public view returns(uint[] memory) {
        require(msg.sender == owner, "not the owner");
        uint numberGradesOfThisStudent = students[_studentsAddress].numberOfGrades;
        uint[] memory grades = new uint[](numberGradesOfThisStudent);
        for(uint i = 0 ; i < numberGradesOfThisStudent ; i++) {
            grades[i] = students[_studentsAddress].grades[i].grade;
        }
        return grades;
    }
}   