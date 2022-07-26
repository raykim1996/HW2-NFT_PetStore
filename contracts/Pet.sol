// contracts/Pet.sol
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Pet is ERC721URIStorage, ERC721Enumerable, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // Keep record of token value
    mapping(uint256 => uint256) public tokenIdToValue;

    // TODO: declare the event of minting the NFTs including the ID, price, and string token URI.
    

    constructor() ERC721("Pet", "PET") {}

    function exists(uint256 tokenId) view public returns (bool) {
        return _exists(tokenId);
    }
    
    // TODO: Implement currentTokenId() to return the id of the last created token.
    // Note that _tokenIds.current() will return the id of the token that will be created next.
    // Use require or revert to throw an error if no tokens have been created yet.
    function currentTokenId() view public returns (uint256) {
        return 0;
    }
    
    // TODO: Implement setTokenURI() to link the tokenID to a string URI.
    function setTokenURI(uint256 tokenId, string memory _tokenURI)
        public
        returns (bool)
    {
        // TODO: Require that the account connected to the contract isn't the zero address.

        // TODO: Require that the tokenId exists.

        // TODO: Call _setTokenURI to link the URI to the token.  See ERC721URIStorage.sol.
        
        return true;
    }
    
    // TODO: Write your minting function:
    function mintTo(address recipient, string memory _tokenURI, uint256 _nftPrice)
        public
        returns (uint256)
    {
        // TODO: Require that the account connected to the contract isn't the zero address.

        // TODO: Get the id of the token that will be created next.

        // TODO: Set the NFT Price in the record.

        // TODO: Use _mint() to create a token and send it to the recipient.  See ERC721.sol.

        // TODO: Use _setTokenURI() to link the token's id with the proper token URI.

        // TODO: Increment _tokenIds.

        // TODO: Emit a Minted event with the NFT's id, price, and URI.

        // TODO: Return the NFT's id.

    }

    function tokenPrice(uint256 _tokenId) public view returns (uint256) {
        return tokenIdToValue[_tokenId];
    }

    function setTokenPrice(uint256 _tokenId, uint256 price) public {
        tokenIdToValue[_tokenId] = price;
    }

    // TODO: Use the super keyword to call inherited versions of these functions from parent contracts.
    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool) {
        
    }

    function _burn(uint256 tokenId) internal virtual override(ERC721, ERC721URIStorage) {
        
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal virtual override(ERC721, ERC721Enumerable) {
        
    }

    function tokenURI(uint256 tokenId) view public override(ERC721, ERC721URIStorage) returns (string memory) {        
        
    }
    
    // If an error in VSCode saying "Function needs to specify overridden contracts...", ignore it.
    function transferFrom(address from, address to, uint256 tokenId) public virtual override {
        // TODO: Call _beforeTokenTransfer() before using super.transferFrom().
    }
}
