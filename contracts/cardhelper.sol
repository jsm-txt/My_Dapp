// pragma solidity ^0.8.0;

// import "./cardcombination.sol";

// contract CardHelper is CardCombine {
    
//     // Allows for the owner (me) to withdraw any deposits
//     function withdraw() external onlyOwner {
//         address _owner = owner();
//         _owner.transfer(address(this).balance);
//     }

//     // Search cards that match owner
//     function getCardsByOwner(address _owner) external view returns (uint256[] memory){
//         uint256[] memory result = new uint256[](ownerCardCount[_owner]);
//         uint256 counter = 0;
//         for (uint256 i = 0; i < card.length; i++) {
//             if (cardToOwner[i] == _owner) {
//                 result[counter] = i;
//                 counter++;
//             }
//         }
//         return result;
//     }
// }
