
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Token {

    string public Name = "Ghost Rider";
    string public Symbol = "GR";
    uint256 public quantity = 500;

    mapping(address => uint256) public balances;

    function mintTokens(address _receiver, uint256 _quantity) public {
        require(_receiver != address(0));

        quantity += _quantity;
        balances[_receiver] += _quantity;
    }

    function burnTokens(address _holder, uint256 _quantity) public {
        require(balances[_holder] >= _quantity);

        quantity -= _quantity;
        balances[_holder] -= _quantity;
    }
}
