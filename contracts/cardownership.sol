pragma solidity ^0.8.0;

import "./cardhelper.sol";
import "./erc721.sol";
import "./safemath.sol";

// contract cardOwnership is cardHelper, ERC721 {
//     using SafeMath for uint256;

//     mapping(uint256 => address) cardApprovals;

//     // Check the card count of the owner
//     function balanceOf(address _owner) external view returns (uint256) {
//         return ownerCardCount[_owner];
//     }

//     // Check the owner of the card
//     function ownerOf(uint256 _tokenId) external view returns (address) {
//         return cardToOwner[_tokenId];
//     }

//     // Transfer card ownership
//     function _transfer(address _from, address _to, uint256 _tokenId
//     ) private {
//         ownerCardCount[_to] = ownerCardCount[_to].add(1);
//         ownerCardCount[msg.sender] = ownerCardCount[msg.sender].sub(1);
//         cardToOwner[_tokenId] = _to;
//         emit Transfer(_from, _to, _tokenId);
//     }

//     // Function to check requierment for card transfer
//     function transferFrom(address _from, address _to, uint256 _tokenId) external payable {
//         require(
//             cardToOwner[_tokenId] == msg.sender || cardApprovals[_tokenId] == msg.sender
//         );
//         _transfer(_from, _to, _tokenId);
//     }

//     // Function to approve Transaction
//     function approve(address _approved, uint256 _tokenId) external payable onlyOwnerOf(_tokenId){
//         cardApprovals[_tokenId] = _approved;
//         emit Approval(msg.sender, _approved, _tokenId);
//     }
// }
