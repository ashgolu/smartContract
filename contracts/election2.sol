// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract ElectionVoting {
    // vaiables
    struct vote{
        address voterAddress;
        bool choice;
    }
    struct voter{
        string voterName;
        bool voted;
    }
    uint private countResult=0;
    uint public finalResult=0;
    uint public totalVoter=0;
    uint public totalVote=0;

    address public electionCommission;
    string public electionCommissionName;
    string public proposal;

    mapping (uint=>vote) private votes;
    mapping (address=>voter) public voterRegister;

    enum State{Created, Voting, ended}
    State public state;


    // modifiers
    modifier condition(bool _condition){
        require(_condition);
        _;
    }
    modifier onlyOfficial(){
        require(msg.sender==electionCommission);
        _;
    }
    modifier inState(State _state){
        require(state==_state);
        _;
    }

    // functions
    constructor(
        string memory _electionCommissionName,
        string memory _proposal
        ) {
        electionCommission=msg.sender;
        electionCommissionName=_electionCommissionName;
        proposal=_proposal;
        state=State.Created;
    }
    function addVoter(address _voterAddress,string memory _voterName)public inState(State.Created) onlyOfficial{
        voter memory v;
        v.voterName=_voterName;
        v.voted=false;
        voterRegister[_voterAddress]=v;
        totalVoter++;
    }
    function startVote()public inState(State.Created) onlyOfficial{
        state=State.Voting;
    }
    function doVote(bool _choice)public inState(State.Voting) onlyOfficial returns(bool voted){
        bool isFound=false;
        if(bytes(voterRegister[msg.sender].voterName).length !=0&& voterRegister[msg.sender].voted==false){
            voterRegister[msg.sender].voted=true;
            vote memory v;
            v.voterAddress=msg.sender;
            v.choice=_choice;
            if(_choice){
                countResult++;
            }
            votes[totalVoter]=v;
            totalVote++;
            isFound=true;
        }
        return isFound;
    }
    function endVote()public inState(State.Voting) onlyOfficial{
        state=State.ended;
        finalResult=countResult;
    }
}