// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StackOperations{
    uint256[] private stack;

    event Pushed(uint256 value);
    event Popped(uint256 value);
    event Added(uint256 a, uint256 b, uint256 result);
    event Subtracted(uint256 a, uint256 b, uint256 result);

    //PUSH
    function push(uint256 value) public{
        stack.push(value);
        emit Pushed(value);
    }

    // POP
    function pop() public returns (uint256) {
        require(stack.length > 0, "Stack underflow");
        uint256 value = stack[stack.length-1];
        stack.pop();
        emit Popped(value);
        return value;
    }

    //ADD
    function add() public {
        require(stack.length >= 2, "Not enough values on stack");
        uint256 a = pop();
        uint256 b = pop();
        uint256 result = a+b;
        push(result);
        emit Added(a,b,result);
    }

    //SUB
    function sub() public {
        require(stack.length >= 2, "Not enough values on stack");
        uint256 a = pop();
        uint256 b = pop();
        uint256 result = a-b;
        push(result);
        emit Subtracted(a,b,result);
    }

    function getStack() public view returns(uint256[] memory) {
        return stack;
    }
}