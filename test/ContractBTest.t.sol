// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import "forge-std/Test.sol";

contract ContractBTest is Test {
    uint256 testNumber; 

    function setUp() public {
        testNumber = 42; 
    }

    function test_NumberIs42() public view {
        assertEq(testNumber, 42);
    }

    // function testFail_Subtract43() public {
    //     vm.expectRevert(stdError.arithmeticError);
    //     testNumber -= 43;
    // }
}