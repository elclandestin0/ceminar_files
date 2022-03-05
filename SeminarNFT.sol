// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SeminarNFT is ERC721 {

    address public owner;
    
    uint public tokenId = 0;
    
    // tokenMetadataFolder
    string private _ipfsFolder = "ipfs://Qmcw9PxcpC3R4YQhQ62NzwSUdrvwGeTKKYobTksc8cpyYM/";

    // contract URi folder (bonus)
    string private _contractURI = "ipfs://QmRqerzgDbidKwNW8h24PQRfKbtqSns3FSwLWSWnLtkrnP";

    address public we_are_studios = 0xCBAb6505F1521029278c2382c1De3B46102cB1B6;

    constructor() ERC721("Seminar NFT", "SEM") {
        owner = msg.sender;
    }

    function mint() public payable {
        require(msg.value == 0.08 ether, "You don't have money!");
        _mint(msg.sender, ++tokenId);
    }

    function liquidate() public {
        require(owner == msg.sender, "Only the owner can send funds");
        payable(we_are_studios).transfer(address(this).balance);
    }

    function contractURI() public view returns (string memory) {
        return _contractURI;
    }


    function _baseURI() internal view virtual override returns (string memory) {
        return _ipfsFolder;
    }


}

