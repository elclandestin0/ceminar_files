// introduce boolean// SPDX-License-Identifier: MIT
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


contract Guard {
    // this is a variable called message and it stores a data of type string
    // Basis of object oriented language
    string public message;

    // This is a variable called randomNumber of data type uint. Uint is unsigned integer
    uint public number = 5;

    // the address of the owner which is set in the constructor. 
    // q: when does the constructor executes?
    address public owner;

    // explain difference between private and public scope
    // explain internal / external scope very briefly
    // 
    string private _secret_message;

    // explain setting the owner
    constructor() {
        owner = msg.sender;
    }

    // explain what view is
    function secretMessage() public view returns (string memory) {
        // explain
        // 1. statement
        // 2. 
        require(msg.sender == owner, "Shhhh! Only the owner can reveal this message!");
        return _secret_message;
    }
}