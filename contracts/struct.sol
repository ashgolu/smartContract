//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract structSample{

struct learner{
    string name;
    uint8 age;
}
//mapping (key=>value) mapping name;
//1 => ("Alice", 40)
//2 => ("Tom", 25)
//3 => ("Jerry" 24)
mapping (uint8 => learner) learners;

function setLearnerDetails(uint8 _key, string memory _name, uint8 _age) public {
    //learners[1].name="Alice"
    //learners[1].age=40
    learners[_key].name=_name;
    learners[_key].age=_age;
}

function getLearnerDetails(uint8 _key) public view returns(string memory, uint8) {
    return(learners[_key].name,learners[_key].age);
}
    
}