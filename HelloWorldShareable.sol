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
    // this is a variable called message and it stores a data of type string
    // Basis of object oriented language
    string public message;

    // This is a variable called randomNumber of data type uint. Uint is unsigned integer
    uint public number = 5;

    // address
    address public randomAddress = 0xe0110C6EE2138Ecf9962a6f9f6Ad329cDFE1FA17;

    // mapping
    mapping(address => string) public messagesFromRandomPeople;

    // set the first message
    constructor(string memory _message) {
        // explain what is going on here and what msg.sender is
        messagesFromRandomPeople[msg.sender] = _message;
    }

    // sets a message from a random person
    function setMessage(string memory _message) public {
        messagesFromRandomPeople[msg.sender] = _message;
    }
}