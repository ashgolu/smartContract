//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Money{
     address prasanth = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
     //balance --> give you the balance of the address
     //transfer --> used to transfer to any address
     
     function getMoney() public payable{}

     //fallback() external payable{}

     function TransferMoney() public payable {
         payable (prasanth).transfer(address(this).balance);
     }

}