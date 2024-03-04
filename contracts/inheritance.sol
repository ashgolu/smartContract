//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract parent{ 
    string internal name = "alice";
    uint8 age= 29;

    function getAge() public view returns(uint8){
        return age;
    }
}

contract child is parent {

    function getname() public view returns(string memory){
        return name;
    }

}

contract functionVisbility {

    string internal name;

    function getName() internal view returns(string memory){
        return name;
    }

}