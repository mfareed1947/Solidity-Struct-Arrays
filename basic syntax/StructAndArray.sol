// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract StructAndArray {
    uint256 public favnum;
    // struct is like a interfce of any object of data
    struct Person {
        uint256 _id;
        string name;
        bool human;
    }

    Person[] public listOfPersons;
    // in thsi code we use memory keyword only for string because it covert into bytes
    // memory word is use to store a temporary
    function addPerson(uint256 id, string memory name, bool types) public {
        Person memory newPerson = Person(id, name, types);
        listOfPersons.push(newPerson);
    }
}
