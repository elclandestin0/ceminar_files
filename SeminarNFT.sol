// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SeminarNFT is ERC721 {
    
    uint public tokenId = 0;
    
    // tokenMetadataFolder
    string private _ipfsFolder = "ipfs://Qmcw9PxcpC3R4YQhQ62NzwSUdrvwGeTKKYobTksc8cpyYM/";

    // contract URi folder (bonus)
    string private _contractURI = "ipfs://QmRqerzgDbidKwNW8h24PQRfKbtqSns3FSwLWSWnLtkrnP";

    constructor() ERC721("Seminar NFT", "SEM") {}

    function mint() public {
        _mint(msg.sender, ++tokenId);
    }

    function contractURI() public view returns (string memory) {
        return _contractURI;
    }


    function _baseURI() internal view virtual override returns (string memory) {
        return _ipfsFolder;
    }


}

