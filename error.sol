// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Error_handling {
   
    //string message for require function
    string result = "You are eligible and stand as a candidate for your party";

    function Vote_count(uint num) public pure{
        assert(num>=0);
    }

    function eligibilty_test(uint _age) public pure returns (string memory){
        if(_age<18){
           
            revert("you are not eliglibe to vote");
            
        }
        return "You are eligible and can vote";
       

    }
    function eligibilty_for_candidate_test(uint a) public view returns (string memory){
        require(a>=21,"you are not eligible to be a candidate as you are under age ");
        return result ;

    }

}
