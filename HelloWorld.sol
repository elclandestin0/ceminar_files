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
    // Basis of object oriented language. Getters vs. Setters
    string public message;

    constructor() {
        // here we are setting the message variable to 'Hello World!'
        message = "Hello World!";
    }
}