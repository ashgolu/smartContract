//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract ValueAlert{

    uint price =100;

    //define the event 
    event priceEvent (bool returnValue);
    //event event name (parameters)

    function bid (uint _amount) public returns(bool){
        if(_amount>price){
          //fire the event
        emit priceEvent(true);
        }
        return true;
        
    }
}