//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract local{

    uint amount; //State Variable (Variables permananetly stored in blockchain)
    
    //local variable 
    //view: read the details from the blockchain
    //pure: not be able to read/get any details from the blockchain  
    function getValue() public pure returns(uint){
        uint value;
        return value;
    }

    function hello() public pure returns(string memory){
        return "hello";
    }
}