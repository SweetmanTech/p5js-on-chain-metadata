# cxy.eth - token-gated smart contracts

This project was specifically designed with my first Ethereum collector, cxy.eth, in mind.

Ethereum has become my home for creativity. Polygon is the chain I use to experiment with new types on on-chain EVM art. Ethereum is the chain I use once I'm convicted in my creative style to highlight my highest quality creations.

This piece focuses on 100% on-chain metadata. Unlike most smart contracts, which return an IPFS url when platforms query the standard ERC721 tokenURI function, this smart contract stores the metadata JSON on-chain, forever. One of the most straight-forward benefits of this is the ability for other smart contracts to query specific metadata attributes.

For most NFTs, other smart contracts can't know the metadata attributes because the tokenURI is just an IPFS cid. This NFT is stored, transparently & immutably on-chain. Other smart contracts will always, with 100% uptime, be able to know the metadata of this NFT and make informed decisions based on that metadata. All 100% trustlessly, unstoppably, & immutably stored on-chain.

The art for this podcast nft is an MP4 visualization of the opening clip from the original podcast episode cxy.eth bought on Ethereum mainnet. You could call this a 1/1 derivative project.

Thank you to cxy.eth for being my first collector on Ethereum. I made this for you <3. Also special thanks to the Mint Songs team for participating in this podcast episode. I love working with this team full 'o weapons. All royalty sales go to a shared Split contract owned equally by the Mint Songs team (0xBE2A84B8d2b09Ba4b7B8B7173D7cD64D7838C1F9).

Original Mint Songs V2 purchase by cxy.eth found here:

- Mint Songs V2: https://www.mintsongs.com/tokens/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93
- Zora: https://zora.co/collections/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93
- OpenSea: https://opensea.io/assets/ethereum/0x2b5426a5b98a3e366230eba9f95a24f09ae4a584/93

# Deployed and Verified

- Polygon Mainnet - TBD
- Mumbai Testnet - [0x52e6b7b4f8784512beb0e0a4b1e2214bfc94e0d8](https://mumbai.polygonscan.com/address/0x52e6b7b4f8784512beb0e0a4b1e2214bfc94e0d8#code)

## Verifying

- set your keys from `hardhat.config.js` in `.env`.
- `npx hardhat verify {your_contract_address} --network polygonMumbai {constructor_arguments}`
