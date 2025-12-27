// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Newt.sol";
import "src/lock.sol";

contract TestContract is Test {
    Newt c;
    lock l;

    function setUp() public {
        c = new Newt("pip","pt");
        l = new lock(address(c));
    }

    function testMint() public {


        c.mint(0xBF39a3a330F9774FBBd6c53f7D8ff91bB03479DE,1000);

        assertEq(c.balanceOf(0xBF39a3a330F9774FBBd6c53f7D8ff91bB03479DE), 1000);
     
    }


    function testname() public{
        assertEq(c.namefun(),"pip");
    }


     function testsymbol() public{
        assertEq(c.symbolfun(),"pt");
    }


    function testlock()public{

         c.mint(0xBF39a3a330F9774FBBd6c53f7D8ff91bB03479DE,1000);
         vm.prank(0xBF39a3a330F9774FBBd6c53f7D8ff91bB03479DE);

         c.approve(address(l),1000);

    vm.startPrank(0xBF39a3a330F9774FBBd6c53f7D8ff91bB03479DE);
        l.deposite(1000);

        assertEq(l.total(),1000);
        assertEq(c.balanceOf(0xBF39a3a330F9774FBBd6c53f7D8ff91bB03479DE),0);

        l.withdraw();
        assertEq(l.total(),0);

        







    }
}
