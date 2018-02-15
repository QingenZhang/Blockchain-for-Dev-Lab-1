pragma solidity ^0.4.0;
import "github.com/Arachnid/solidity-stringutils/strings.sol";

contract C {
  using strings for *;
  string private s;

  function strcat(string s1, string s2) constant returns (string) {
    s = s1.toSlice().concat(s2.toSlice());
    return s;
  }
}