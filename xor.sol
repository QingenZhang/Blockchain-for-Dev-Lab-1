pragma solidity ^0.4.0;
contract Xor {
    function xor(string x, string y) public constant returns(string output) {
        if (keccak256(x) == keccak256(y)) return "0";
        else return "1";
    }
}