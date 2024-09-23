// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    // unsigned / 256-bit (32bytes) / Fixed size 256bits
    uint256 public count;

    // get count 
    function get() public view returns (uint256) {
        return count;
    }

    // add 1 count 
    function inc() public {
        count += 1;
    }

    // subtract 1 count
    function dec() public {
        // execute when count > 0 / if count <= 0, print default value "Counter is already zero"
        require(count > 0, "Counter is already zero");
        count -= 1;
    }
} 
