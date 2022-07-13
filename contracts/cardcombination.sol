// pragma solidity ^0.8.0;

// import "./cardcreation.sol";

// contract CardInterface {
//     function getCardId(uint256 _id) external view returns (
//         uint256 id
//     );
//     }

// contract CardCombine is CardCreation {
//     CardInterface cardContract;

//     // Combination fee
//     uint256 combinationFee = 0.001 ether;

//     // Allows for only the owener to  access their own cards
//     modifier onlyOwnerOf(uint256 _cardId) {
//         require(msg.sender == cardToOwner[_cardId]);
//         _;
//     }

//     // Sets the fee to combine cards with others
//     function setCombinationFee(uint256 _fee) external onlyOwner {
//         combinationFee = _fee;
//     }

//     // Combine two cards to create a new card
//     function cardCombination( uint256 _cardId, uint256 _targetCardId) internal onlyOwnerOf(_cardId) {
//         Card storage myCard = card[_cardId];
//         uint256 newId = (myCard.id + _targetCardId) / 2;
//         newId = newId - (newId % 100) + 99;
//         _createCard("NoName", newId);
//     }
    
//     // Triggers and get information to combine two cards
//     function triggerCardCombination(uint256 _cardId, uint256 _opponentCardId) external payable {
//         require(msg.value == combinationFee);
//         uint256 targetCardId;
//         (targetCardId) = cardContract.getCardId(_opponentCardId);
//         cardCombination(_cardId, targetCardId);
//     }
// }
