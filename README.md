SimpleDivision Smart Contract
Overview
The SimpleDivision smart contract provides a simple division function while implementing Solidity's require(), assert(), and revert() statements for error handling. The contract ensures only the owner can perform the division, prevents division by zero, and checks for a negative denominator.

Prerequisites
Solidity version 0.8.1 or later
Remix IDE or any other Solidity development environment
Contract Details
State Variables
address public owner: Stores the address of the contract owner.
Constructor
constructor(): Initializes the contract by setting the owner to the address that deploys the contract.
Functions
function divide(uint256 numerator, uint256 denominator) public view returns (uint256): Performs the division of numerator by denominator with the following checks:
Ensures the caller is the contract owner using require().
Ensures the denominator is not zero using require().
Asserts that the result of the division is valid using assert().
Reverts the transaction if the denominator is negative using revert().
Error Handling
require():
Ensures that only the contract owner can call the divide function.
Prevents division by zero.
assert():
Checks that the result of the division operation is valid by confirming result * denominator == numerator.
revert():
Reverts the transaction if the denominator is negative (though this check is redundant in this context since unsigned integers cannot be negative).
