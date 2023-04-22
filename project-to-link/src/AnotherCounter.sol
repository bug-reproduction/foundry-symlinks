// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./TheIssueManifestItselfWhenTheLinkedProjectImportItself.sol";

contract AnotherCounter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
