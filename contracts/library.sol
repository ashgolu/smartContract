//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

//define the library 
library Mathfunc {

    function div (int a, int b) public pure returns(int){
        require(b!=0);
        return a/b;
    }

}

//using the library 
contract LibrarySample{
    using Mathfunc for int;

    function div (int a, int b) public pure returns(int){
        return a.div(b);
    }
}