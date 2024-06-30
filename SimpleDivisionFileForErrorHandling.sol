// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract SimpleDivision {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function divide(uint256 numerator, uint256 denominator) public view returns (uint256) {
        require(msg.sender == owner, "You are not the owner");

        require(denominator != 0, "Denominator cannot be zero");

        uint256 result = numerator / denominator;

        assert(result * denominator == numerator);
        if (result< 0) {
            revert("Result cannot be negative");
        }

        return result;
    }
}
