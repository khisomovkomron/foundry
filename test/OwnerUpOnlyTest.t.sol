// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

error Unauthorized();

contract OwnerOnlyUp {
    address public immutable owner; 
    uint256 public count; 

    constructor() {
        owner = msg.sender;
    }

    function increment() external {
        if (msg.sender != owner) {
            revert Unauthorized();
        }
        count++;
    }
}

contract OwnerOnlyUpTest is Test {
    OwnerOnlyUp upOnly;

    function setUp() public {
        upOnly = new OwnerOnlyUp();
    }

    function test_IncrementAsOwner() public {
        assertEq(upOnly.count(), 0);
        upOnly.increment();
        assertEq(upOnly.count(), 1);
    }

    function testFail_IncrementAsNotOwner() public {
        vm.prank(address(0));
        upOnly.increment();
    }
}