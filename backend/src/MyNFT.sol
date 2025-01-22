// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721Enumerable, Ownable {
    uint256 public nextTokenId;

    constructor() Ownable(msg.sender) ERC721("Slime","SLIME"){}

    function mint(string memory tokenURI) external{
        uint256 tokenId = nextTokenId;
        _safeMint(msg.sender, tokenId);
        nextTokenId++;
    }
}