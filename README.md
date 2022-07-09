# Solidity Gated Mint

- only allow specified addresses to mint a 1:1 nft.

# Deployed and Verified

- Polygon Mainnet - [0x21957557C2f87731bDCA472Fd43519aC3281D052](https://polygonscan.com/address/0x21957557C2f87731bDCA472Fd43519aC3281D052#code)
- Mumbai Testnet - [0x34Dd6Cd8515d1135604dF02cD6AAa3F4081744c7](https://mumbai.polygonscan.com/address/0x34Dd6Cd8515d1135604dF02cD6AAa3F4081744c7#code)

# Background - cxy.eth

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

# How to Deploy & Verify

1. `git clone git@github.com:SweetmanTech/token-gated-smart-contracts.git`
2. `cd token-gated-smart-contracts`
3. `npm i`
4. `npx hardhat run scripts/deploy.js --network polygonMumbai`
5. set your keys from `hardhat.config.js` in `.env`.
6. `npx hardhat verify {your_contract_address} --network polygonMumbai`
