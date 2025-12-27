// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;
import  "node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "node_modules/@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Newt is ERC20 , Ownable{ 

    event mintevent(address indexed to,uint256 indexed amount);

    

    string token_name;
    string token_symbol;
    constructor (string memory name,string memory symbol) ERC20(name,symbol) Ownable(msg.sender){

        token_name=name;
        token_symbol=symbol;

    }

    function mint(address id,uint256 amount)  onlyOwner()  public{

        _mint(id,amount);

    }

    function namefun() public view returns( string memory){

        return token_name;
    }


     function symbolfun() public view  returns(string memory){

        return token_symbol;
    }
 


}
