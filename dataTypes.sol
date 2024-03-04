// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract arraySample{
    //array --> fixed and dynamic 
    //fixed length array 

//age[0]=38, age[1]=41, age[2]=43........age[34]=27
    uint8[35] age;

    function setData(uint8 _index, uint8 _value) public {
        age[_index]=_value;
    }

    function readData(uint8 _index) public view returns(uint){
        return age[_index];
    }


    //dynamic array 
    //phoneNumber[0]=6888, phoneNumber[1]=1234....
    uint[] phoneNumber;

    function setDataforDynamicArray(uint _phoneno) public {
        phoneNumber.push(_phoneno);
    }
     function readDynamicArray(uint8 _index) public view returns(uint){
        return phoneNumber[_index];
    }
}