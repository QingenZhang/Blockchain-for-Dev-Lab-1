pragma solidity ^0.4.0;
contract mortal {
    /* Define variable owner of the type address */
    address owner;

    /* This function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }
}

contract greeter is mortal {
    /* Define variable greeting of the type string */
    string greeting;
    
    /* This runs when the contract is executed */
    function greeter() public {
        greeting = "hello, World!";
    }

    /* Main function */
    function greet() constant returns (string) {
        return greeting;
    }
    
    /* Reset function */
    function rst_greeting(string _greeting) public {
        greeting = _greeting;
    }
}