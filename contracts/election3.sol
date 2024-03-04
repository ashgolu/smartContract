// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract Election{
    // vaiables
    address public owner;
    string public eventname;
    uint public totalVote;
    bool votingStarted;

    // strucutre
    struct Candidate{
        address CandidateAddress;
        string  name;
        string Proposal;
    }
    struct voter{
        address VoterAddress;
    }
    //intialization of variable
    constructor(string memory _eventname) {
        owner=msg.sender;
        eventname=_eventname;
        totalVote=0;
        votingStarted=false;
    }

    function registerCandidate(string memory _Proposal,uint _age,address _CandidateAddress) public{
        require(msg.sender==owner,"only owner can register candidate");
    }

}