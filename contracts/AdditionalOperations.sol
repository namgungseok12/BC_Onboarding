// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdditionalOperations {
    // MOD
    function modExample(uint256 a, uint256 b) public pure returns(uint256) {
        require(b != 0, "Divider cannot be zero");
        return a % b;
    }

    // LT: compare two numbers
    function LtExample(uint256 a, uint256 b) public pure returns (bool) {
        return a < b;
    }

    //BYTE: extract certain byte from byte array
    function byteExample(bytes1[] memory data, uint256 index) public pure returns (bytes1) {
        require(index < data.length, "index out of bounds");
        return data[index];
    }
}