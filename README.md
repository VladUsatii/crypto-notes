# Crypto for noobs 💰

I learned crypto this summer. In the future, I want to expand and port decentralized solutions for the world to enjoy. Maybe even create a BIP?

## Getting Started

Download with:

```bash
git clone https://github.com/VladUsatii/crypto-notes.git
cd crypto-notes
```

To read in a regular window:

```bash
vi README.md # will open vim in the way I wrote it
```

To read in a nice window, do a:

```bash
pip install -r requirements.txt
chmod +x exec.sh
./exec.sh # will open README in a nice window on port 5000
```

I made a basic notes document, explaining all the terms and their meanings for Bitcoin (which also extends to Ethereum). Cool projects coming soon as well.

Did this help? Please ⭐ star and 👀 watch for more documentation and explanations 😊

### 📚 Book Recommendations

### What is a cryptocurrency?

	Cryptocurrency -> A set of blockchain hashed nodes that allow spending between peers without general oversight

#### Some of the major companies:

	Bitcoin -> The first real coin and software behind blockchain protocols.
	Ethereum -> Introduced the Smart Contract System on the blockchain.

#### Difficult problem to solve in crypto?

	The Byzantine Generals Problem -> A reliable computer system must be fault resistant (cope with the failure of one or more components). But, in the process of being fault resistant, the blockchain may be impeded by faulty updates to the block or conflicting transactions.
		- The full story: Two generals sit at the top of a different side of the hills overlooking a city, and they are trying to communicate the best way to attack (which paths they'll both take, etc.). The problem comes when they try to figure out how to update each other's idea of what is going on without having a centralized source of communication.

#### Input for transactions is where?

	coinbase -> The field used as the sole input for coinbase transactions. Coinbase allows claiming the block reward and provides up to 100 bytes for arbitrary data.
		- coinbase transaction - The first transaction in a block, created by a miner; includes a single coinbase.

#### Types of storage in Bitcoin?

	cold storage -> A reserve of offline bitcoin. It is achieved when BTC private keys are created and stored in a secure and offline env. It is great for anyone with BTC holdings. Online computers are vulnerable to exploitation and hacking, so there should never be too big of a storage of bitcoin online.
	hot storage -> The.. opposite of a cold storage, I'd presume.

#### Types of coins

	colored coins -> Bitcoin 2.0 protocol that lets devs create digital assets on top of the BTC blockchain. This extends the use of Bitcoin beyond currency.
	*TODO*: Learn more about the types of coins. There may be more.

#### What is the double spending problem?

	Double spending -> This is when you spend money more than once (with confirmation that the fees processed). BTC protects against d.s. by verifying each transaction added to the chain (this ensures that the inputs for the transaction hadn't been spent previously).

#### Some of the most important terms:

	Address -> An encoded base58check version of a public key 160-bit hash. There are two addresses.

	bip -> Bitcoin improvement proposal. A set of proposals that members of the BTC space submit to improve the currency/platform.
		- E.g. BIP-21 is a proposal to improve the Bitcoin Uniform Resource Identifier (URI) scheme.

	block -> A grouping of transactions. They have a timestamp, a fingerprint of the previous block. The block header is hashed to produce a proof of work (validates the transaction). Valid blocks are added to the main blockchain by network consensus algorithms.
		- genesis block - the first block in the chain, used to initialize the cryptocurrency
		- blockchain - A list of validated blocks, each linking to its predecessor all the way to the genesis block (above).

	Confirmations -> Once a transaction has been put in a block, it has a confirmation. Once another block is mined on the same blockchain, the transaction has two confirmations, and on and on.. Six or more confirmations and you have sufficient proof that a transaction will never be reserved with enough computational power.

	General Consensus -> When several nodes, usually most of the nodes on a network, all have the same number, types, and specific blocks in order on their locally-validated best block chain. This is the agreement that a block is correct and should be the new "correct" blockchain for the entire cryptocurrency. It is a way for a network of computers to agree on a correct block that should continue growing in length.
		- Consensus Rules -> The block validation rules that full nodes follow to stay in consensus with other nodes.

	Block difficulty -> The network-wide settings that controls the amount of computation required to mine a block (produce a proof-of-computational-work. This difficulty is increased with the more blocks mined.
		- Difficulty Retargeting -> A recalculation of the difficulty (occurs usually every 2016 blocks).
		- Difficulty Target -> A difficulty that when set, all computation (gas) in the network will find blocks approx. every 10 minutes.

	Nonce -> The nonce is a 32-bit field, whose value is set so that the hash of the block will contain a run of leading zeros. The rest of the fields may not be changed, as they have a defined meaning.
	Extra nonce -> When difficulty of the computational puzzle increases, miners often cycle through all 4 billion values of the nonce without finding a block. Because the coinbase script only stores 2-100b of data, miners started using that extra space as nonce space, allowing them to see a much larger range of block headers values to find valid blocks.

	(Gas) fees -> The sender of a transaction often includes a fee to the the network for processing and adding to the ledger (the blockchain). Most transactioon on BTC require a min fee of .5 mBTC or .50 millibitcoin or .05 bitcoin.
		-> Gas fees can be drastically reduced by creating microledgers to store hundreds of microtransactions before pooling and adding them to the chain. This is called a L2 solution (extra security through distributing payments to different networks and dividing the work amongst machines).
			- An example of a microledger: cheapETH. This was created by Geohot to lower Ethereum gas fees by a factor of 10 or 100 (not sure, but very useful).

	Forking -> An accidental fork (or just fork) occurs when two or more blocks have the same height, forcing the blockchain to split the trees. This usually occurs when two or more miners find blocks at the same time, or if someone is attacking the network buffer.
		- Hard Fork -> A Hard-Forking Change is an irreversible divergence in the blockchain, commonly occurs when non-upgraded nodes can't validate blocks made by the upgraded nodes that follow the updated consensus rules.
		- Soft Fork -> A temp fork in the chain which commonly occurs when more than one miner are using non-upgraded nodes that don't follow a new consensus rule. Their nodes don't know about newer node versions. This isn't to be confused with a hard fork, which is fundamentally different.
		- Git Fork -> Completely different from a crypto fork. A git fork is when you split (spin-off/bootleg) an idea and either keep it the exact same version or tweak it. You can then ask the original author of the .git if you can merge or acquire the files. If not, you can continue to mantain your fork.

	Hash -> Digital fingerprint of some binary input (usually a data type converted to bytes).
		- Hashlocks -> A type of encumbrance that stops the spending of an output until a specified piece of data is publicly revealed. Their special property: Once a hashlock is opened publicly, any other hashlock secured with the same key can also be revealed. This makes it possible to create several outputs sorted with the same hashlock (all become spendable at once).

	KYC is a process that banks use to refer to the identity of every one of their clients.

#### Best tools for distributed computing:

**LevelDB** is a lightweight key-value store that has persistence, speed, and multipurpose bindings to many platforms.

**uWSGI** is an extremely lightweight API for key-value store requests and linkage of commands. Used for web applications and for bindings between the data on the Bitcoin server and a front-end display of those stats.

#### Key Creation

Some of the hierarchical and deterministic parts of Bitcoin rely on their protocols to maintain the user and picture state without attack vectors. Here are some of the most essential protocols and processes to know:

	HD protocol -> The Hierarchical Deterministic key creation and transfer protocol (BIP 32), allows creating child keys from parent keys in a user-created hierarchy.
		- HD wallet -> Wallets that are using the HD protocol from BIP 32.
			- HD wallet seed -> A potentially-short value used as a seed to generate the master private key and master chain code for an HD wallet.
	Hashed TimeLock Contract -> class of payments that use hashlocks and timelocks to require that the receiver either acknowledge their reception prior to a deadline by keygenning proof of payment or forfeit the ability to claim the payment, returning the block header to the sending user.
		- Lightning Networks -> An implementation of HTLC with bi-directional payment channels which allows the user to send a payment and have it routed across multiple P2P channels. This allows the creation of a network where any peer on the network can pay any other peer on the network, even if they don't have the channel open between each other (like an NFC protocol does).

	Open Assets Protocol -> Allows issuance and transfer of user-created BTC assets. The OAP is an evolution of the concept of V2 colored coins.

#### Types of wallets:

	Hardware wallet -> A special type of wallet that stores private keys (of a single or a network of users) in a secure hardware device.

#### Signature Algorithms:

	ECDSA (Elliptic Curve Digital Signature Algo.) is a cryptographic algorithm that ensures that funds can only be spent by their rightful owners.

	nLockTime -> Part of a transaction where a VM indicates the earliest time (or earliest block) in which a transaction may be added to the public ledger (the blockchain).
	mempool -> The bitcoin Mempool is a collection of all the transactions in a block that have been verified by the individual bitcoin nodes and aren't yet validated.

	opcode -> Operation codes from the Bitcoin Scripting language or the EVM (ether vm) that push data or perform functions within a pubkey script or a sig/multisig script.
		- OPCODE LIST:
			* OP_RETURN = output in OP_RETURN transaction.
			* OP_RETURN transaction = type of transaction that is relayed and mined in BTC Core .9.0 and later that adds arbitrary data to a provably unspendable pubkey script that full nodes don't have to store in the UTXO DB.
			* TxOut = output in a transaction, containing two fields: 1) value for transferring zero or more satoshis and 2) a pk script for indicating what conditions must be fulfilled for the satoshis to be further spent.
			* P2SH Address -> Base58Check encodes of the 20b hash of a script, P2SH addresses use the V. pref. 5, resulting in Base58Check-encoded addresses that start with 3. These hide the complexity of a transaction.

### What next?

Start reading my notes from the official "Bitcoin" book by a blockchain programmer. I will most likely add my own notes from external sources, so as not to copy the book like I almost did with these definitions. A lot of these definitions have one formal meaning, so as not to get them confused with what I *think* they are.

1. A General Overview of BTC, Transactions, Storage, and the Protocols

.. More coming soon

---
Created by Vlad Usatii @ [youshould.readproduct.com](https://youshould.readproduct.com/)
