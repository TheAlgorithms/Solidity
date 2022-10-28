//solidity smart contract to check weather a number is prime or not

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day3 {
  
      function prime(uint n) public view returns(uint)
      {
     
     if(n==0||n==1)
     return 0;

     for(uint i= 2;i<n;i++){
     if(n%i==0){
     return 0;
     }
     return 1;
    }
}}