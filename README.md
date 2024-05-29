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

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

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
