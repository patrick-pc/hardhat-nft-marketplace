// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract OtherContract {
    uint256 public s_variable;
    uint256 public s_otherVar;
    address private immutable i_owner;

    constructor() {
        i_owner = msg.sender;
    }

    function doSomething() public returns (uint256) {
        s_variable = 123;
        s_otherVar = 1;
        return s_variable;
    }

    function getOwner() external view returns (address) {
        return i_owner;
    }
}
