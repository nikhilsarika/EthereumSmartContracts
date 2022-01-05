// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;
contract BallotV1{
    struct Voter{
        uint weight;
        bool voted;
        uint vote;
    }

    struct Proposal{
        uint voteCount;
    }

    address chairperson;
    mapping(address => Voter) voters;
    Proposal[] proposals;

    enum Phase {Init, Regs, Vote, Done}
    Phase public state = Phase.Init;

    constructor(uint numProposals) public{
        chairperson = msg.sender;
        voters[chairperson].weight =2;
        for(uint i=0; i<numProposals; i++){
            proposals.push(Proposal(0));
        }
    }

    function stateChange(Phase x) public{
        if(msg.sender!=chairperson){
            revert();
        }
        if(x<state) revert();
        state =x;
    }


}