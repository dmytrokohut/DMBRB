pragma solidity 0.4.19;

/**
 * @title Contract that checking whether sender is owner of the contract.
 *
 * @dev This contract contains modifiers and functions that makes a check whether
 *  sender is a owner. This contract is a first part of access managing.
 */
 contract Owned {

  // Contract owner
  address public owner;

  modifier onlyByOwner {
    require(msg.sender == owner);
    _;
  }

  function Owned() public {
    owner = msg.sender;
  }

 }
