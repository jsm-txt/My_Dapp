pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
// import "./ownable.sol";
// import "./safemath.sol";


contract CardItem is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("GameCard", "Card") {

    }
    uint256 newCardFee = 0.001 ether;

    function awardCard(address player, uint256 _cardId,  string memory tokenURI) public returns (uint256){
        // _tokenIds = _generateRandomNumber();
        require(msg.value == newCardFee);
        if(_cardId){
            _cardId.increment();
            uint256 newItemId = _cardIds.current();
            _mint(player, cardId);
            _setTokenURI(newItemId, tokenURI);
            return newItemId;
        }
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(player, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }

}

// contract CardCreation is ERC721URIStorage {
//     using SafeMath for uint256;
//     using SafeMath32 for uint32;
//     using SafeMath16 for uint16;

//     constructor() ERC721("Card","ETH") {}
//     event NewCard(uint256 cardId, string name);

//     // limits the card id to be 1000000
//     uint256 idModulus = 1000000;

//     struct Card {
//         string name;
//         uint256 id;
//     }

//     Card[] public card;

//     mapping(uint256 => address) public cardToOwner;
//     mapping(address => uint256) ownerCardCount;



//     // Creates a new card with a name and ID
//     function _createCard(string memory _name, uint256 _cardId) internal {
//         uint256 id = card.push(Card(_name, _hp)) - 1;
//         cardToOwner[id] = msg.sender;
//         ownerCardCount[msg.sender] = ownerCardCount[msg.sender].add(1);
//         emit NewCard(id, _name);
//     }

//     // Returns a card ID to generate values
//     function _generateRandomNumber(string memory _str) private view returns (uint256){
//         uint256 rand = uint256(keccak256(abi.encodePacked(_str)));
//         return rand % idModulus;
//     }
    
//     // function _setTokenURI()

//     //creates a new card
//     function createRandomCard(string memory _name) public returns (uint256) {
//         require(ownerCardCount[msg.sender] == 0);
//         uint256 randId = _generateRandomNumber(_name);
//         metadata = "google.com";
//         _createCard(_name, randId);
//         _setTokenURI(randId, metadata);

//         return randId;
//     }
// }
