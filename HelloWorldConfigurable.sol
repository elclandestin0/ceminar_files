// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
    please see docs for more information on solidity https://docs.soliditylang.org/en/v0.8.12/
    please read up on object oriented programming more before diving into code if you are new
    to development. 

    relatable links: 
    https://www.geeksforgeeks.org/introduction-of-object-oriented-programming
    https://www.python.org/about/gettingstarted/

    by cerise.eth
 */


contract HelloWorld {
    // This is a variable called message and it stores a data of type string
    string public message;

    // This is a variable called randomNumber of data type uint. Uint is unsigned integer
    uint public number = 10;

    // Upon deploying our contract, we can enter a value to set. This way, message gets set to
    // whatever string we want!
    constructor(string memory _message) {
        message = _message;
    }

    // this is a function that can be called to set the so called message
    function setMessage(string memory _message) public {
        message = _message;
    }
}