// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 * @title Solidity Emergency Stop pattern
 *
 * This is a pattern to stop the contract execution.
 * MerchantBank is the owner of the contract is the person that deploys it.
 *
 */
contract MerchantBank {
    address payable public owner;
    bool paused = false;

    constructor() {
        owner = payable(msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier isPaused() {
        require(paused);
        _;
    }

    modifier notPaused() {
        require(!paused);
        _;
    }

    function pauseContract() public onlyOwner notPaused {
        paused = true;
    }

    function unpauseContract() public onlyOwner isPaused {
        paused = false;
    }

    function depositEther() public notPaused {
        // logic to deposit ether into the contract
    }

    /** @notice transfer the ether out fast before more damage is done.
     *
     */
    function emergencyWithdrawal() public isPaused {
        owner.transfer(address(this).balance);
    }
}
