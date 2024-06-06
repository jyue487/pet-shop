pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    function adopt(uint petId) public returns (uint) {
        require(0 <= petId && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

    // view : function will not modify the state of the contract
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}