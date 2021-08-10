# For Developers (Ethereum)

Ethereum is much better at letting users play with their software. One great example is Web3.py. Don't mind the inner workings of Web3, but in all its essence, this module provides currency conversions, connections to IPCs or localhosts, and runs on the Ethereum server. It allows users to create Level 2 solutions on Level 1 technologies, has a great interface with encryption techniques to choose from, and allows you to create decentralized (finance or non-finance based) applications on the blockchain (nicknamed dApps).

Here is a snippet from ```web3.py``` that converts wei (the smallest Eth currency name, similar to BTC's Satoshi) to gwei and wei to Eth. Some dApps are converting expensive gas operations and Eth amounts into smaller, more manageable amounts to reduce the cost of transactions and increase the number of transactions simultaneously. Enough rambling:

```python3
from web3 import Web3 as w3


# checks if connected
w3Test = w3(w3.EthereumTesterProvider())
w3Test.isConnected() # output True

## fake exchange into smaller numbers

# my "bank account"
bankBalance = 1 # ether

w3.toWei(bankBalance, 'ether')
# output wei (smallest denomination of eth)

ww3.fromWei(w3.toWei(bankBalance, 'ether'), 'gwei')
# outputs 1, or the reverse of the 'toWei' function

```

Favorite resources for Web3 development and better dApps:

[A Developer's Introduction to Ethereum](https://ethereum.org/en/developers/tutorials/a-developers-guide-to-ethereum-part-one/)
[Intro to Ethereum](https://ethereum.org/en/developers/docs/intro-to-ethereum/)
