// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

import "./npNFT.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract mint0000r is Ownable {
	npNFT public myNFT;
	uint256 public totalSupply;

	constructor(npNFT _npNFT, uint256 _totalSupply) {
		myNFT = _npNFT;
		totalSupply = _totalSupply;
	}

	function mint() external {
		myNFT.mint(msg.sender, totalSupply);
		totalSupply++;
	}

	function transferNftOwnership() external onlyOwner {
		myNFT.transferOwnership(msg.sender);
	}
}
