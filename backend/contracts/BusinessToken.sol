// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BusinessToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        uint256 initialSupply = 1 * (10 ** uint256(decimals()));
        _mint(msg.sender, initialSupply);
    }

    function getTokenDetails(
        address userAddress
    ) public view returns (string memory, string memory, uint) {
        return (name(), symbol(), balanceOf(userAddress));
    }
}
