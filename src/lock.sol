// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import {IERC20} from "node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract lock {
    address pipaddress;
    uint256 totalamount;

    mapping(address => uint256) people;

    constructor(address tk_address) {
        pipaddress = tk_address;
    }

    function deposite(uint256 amount) public {
        require(
            IERC20(pipaddress).allowance(address(msg.sender), address(this)) >=
                amount
        );

        IERC20(pipaddress).transferFrom(
            address(msg.sender),
            address(this),
            amount
        );

        people[msg.sender] += amount;
        totalamount += amount;
    }

    function withdraw() public {
        require(people[msg.sender] > 0);

        totalamount -= people[msg.sender];
        people[msg.sender] = 0;

        IERC20(pipaddress).transfer(address(msg.sender), people[msg.sender]);
    }

    function total() public view returns (uint256) {
        return totalamount;
    }
}
