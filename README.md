# Ghost Rider Token Smart Contract

This is a basic Ethereum token smart contract implemented in Solidity. The contract provides functionality for minting and burning tokens. The token is named "Ghost Rider" and identified by the symbol "GR". The initial supply of tokens is set to 500.

```javascript

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

```
## Contract Details

- **Token Name:** Ghost Rider
- **Token Symbol:** GR
- **Initial Token Supply:** 500

## Functions

### Mint Tokens

The `mintTokens` function allows the contract owner to create new tokens and allocate them to a specified recipient. This function increases the overall token supply and the balance of the designated address.

**Parameters:**

- `_receiver`: The address that will receive the newly created tokens.
- `_quantity`: The quantity of tokens to be minted.

### Burn Tokens

The `burnTokens` function enables the contract owner to eliminate a specific amount of tokens from a particular address. This function decreases both the overall token supply and the balance of the designated address.

**Parameters:**

- `_holder`: The address from which the tokens will be burnt.
- `_quantity`: The quantity of tokens to be burned.

## Notes

- The contract utilizes a mapping data structure to store and manage token balances for different addresses.
- Both the `mintTokens` and `burnTokens` functions include necessary requirements to ensure the validity and security of the token operations.

## Compilation and Deployment

To compile the provided Solidity code, navigate to the "Solidity Compiler" tab in the left-hand sidebar. Ensure that the "Compiler" option is set to "0.8.18" or a compatible version, and then click on the "Compile token.sol" button.

After successful compilation, deploy the contract by visiting the "Deploy & Run Transactions" tab in the left-hand sidebar. Choose the "token" contract from the dropdown menu and click the "Deploy" button.

Once deployed, interact with the contract by calling the "burn" or "mint" functions and providing the necessary parameters. You can find these functions in the left-hand sidebar under the "token" contract. Additionally, check the total balance by clicking on the "total balance" option.

## Authors

- Vishnu Mohan
- Email:mohanvishnu008@gmail.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

