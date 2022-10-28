// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract term{
     
 
   function nthTerm(uint n ,uint a,uint b,uint c) public pure returns(uint){
  uint[100] memory arr;
  arr[1]=a;
  arr[2]=b;
  arr[3]=c;
  for(uint i=4;i<=n;i++)
  {
      arr[i]=arr[i-1]+arr[i-2]+arr[i-3];
  }
  return arr[n];
   
}
}
