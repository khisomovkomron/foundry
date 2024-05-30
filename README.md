## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil - local test net

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast - command-line tool for performing Ethereum RPC calls

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
### Help
```forge test cheatcodes
Cheatcodes allow you to change the block number, your identity, and more. 
You can access cheatcodes easily via the vm instance available in Forge Standard Library’s Test contract.
vm.prank(address)
vm.expectEmit
vm.expectRevert
vm.startPrank(alice);
assertEq(dai.balanceOf(alice), 10000e18);
console.log(alice.balance);
deal(address(dai), alice, 10000e18);
hoax(alice, 100 ether); // set up a prank as Alice with 100 ETH balance


### Scripts 
forge init 
forge build 
forge test
forge test --fork-url <your_rpc_url>
forge test --fork-url <your_rpc_url> --fork-block-number 1
forge clean (removes all build artifacts and cache directories). It is also possible to ignore the cache entirely by passing --no-storage-caching, or with foundry toml by configuring no_storage_caching and rpc_storage_caching.

### Gas Tracking
Gas reports 
Gas Snapshots

forge test --gas-report
forge snapshop
forge snapshot --diff .gas-snapshot2

### Debugger 
$ forge debug --debug $FILE --sig $FUNC

### Cast 
$ cast call 0x6b175474e89094c44da98b954eedeac495271d0f "totalSupply()(uint256)" --rpc-url https://eth-mainnet.alchemyapi.io/v2/Lc7oIGYeL_QvInzI0Wiu_pOZZDEKBrdf


