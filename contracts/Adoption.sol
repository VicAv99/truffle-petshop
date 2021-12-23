pragma solidity ^0.5.0;


contract Adoption {
    address[16] public adopters;

    function adopt(uint petId) public returns (uint) {
      // ensures petId is within range
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    // view, i think is like readonly
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
