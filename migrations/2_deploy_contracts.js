const cardContracts = artifacts.require("cardcreation")

module.exports = function(deployer) {
    deployer.deploy(cardcreation);
}