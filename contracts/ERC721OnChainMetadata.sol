// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./OnChainMetadata.sol";

contract ERC721OnChainMetadata is ERC721, OnChainMetadata {
    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
        _addValue(
            _contractMetadata,
            key_contract_name,
            abi.encode("P5JS on-chain metadata")
        );
        _addValue(
            _contractMetadata,
            key_contract_description,
            abi.encode(string(abi.encodePacked("P5JS on-chain metadata")))
        );
        _addValue(
            _contractMetadata,
            key_contract_image,
            abi.encode("ipfs://QmT8utUbMh3TJ51tGi37GNw41rTtrgR6EBy6M6Bs8zRvLA")
        );
        _addValue(
            _contractMetadata,
            key_contract_external_link,
            abi.encode(
                "https://github.com/SweetmanTech/token-gated-smart-contracts"
            )
        );
        _addValue(
            _contractMetadata,
            key_contract_seller_fee_basis_points,
            abi.encode(300)
        );
        _addValue(
            _contractMetadata,
            key_contract_fee_recipient,
            abi.encode(0xBE2A84B8d2b09Ba4b7B8B7173D7cD64D7838C1F9)
        );

        _setValue(
            1,
            key_token_name,
            abi.encode("Meet the Mint Songs Team (MP4)")
        );
        _setValue(
            1,
            key_token_description,
            abi.encode(
                "This project was specifically designed with my first Ethereum collector, cxy.eth, in mind. Ethereum has become my home for creativity. Polygon is the chain I use to experiment with new types on on-chain EVM art. Ethereum is the chain I use once I'm convicted in my creative style to highlight my highest quality creations. This piece focuses on 100% on-chain metadata. Unlike most smart contracts, which return an IPFS url when platforms query the standard ERC721 tokenURI function, this smart contract stores the metadata JSON on-chain, forever. One of the most straight-forward benefits of this is the ability for other smart contracts to query specific metadata attributes. For most NFTs, other smart contracts can't know the metadata attributes because the tokenURI is just an IPFS cid. This NFT is stored, transparently & immutably on-chain. Other smart contracts will always, with 100% uptime, be able to know the metadata of this NFT and make informed decisions based on that metadata. All 100% trustlessly, unstoppably, & immutably stored on-chain. The art for this podcast nft is an MP4 visualization of the opening clip from the original podcast episode cxy.eth bought on Ethereum mainnet. You could call this a 1/1 derivative project. Thank you to cxy.eth for being my first collector on Ethereum. I made this for you <3. Also special thanks to the Mint Songs team for participating in this podcast episode. I love working with this team full 'o weapons. All royalty sales go to a shared Split contract owned equally by the Mint Songs team (0xBE2A84B8d2b09Ba4b7B8B7173D7cD64D7838C1F9). Original Mint Songs V2 purchase by cxy.eth found here: https://www.mintsongs.com/tokens/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93. Zora: https://zora.co/collections/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93 OpenSea: https://opensea.io/assets/ethereum/0x2b5426a5b98a3e366230eba9f95a24f09ae4a584/93"
            )
        );
        _setValue(
            1,
            key_token_image,
            abi.encode("ipfs://QmY2EdzLTtoTAKCgcomnG9W3fREwtvfJJzMNgHVmT5HbDY")
        );
        _setValue(
            1,
            key_token_animation_url,
            abi.encode("ipfs://QmZ5dCicXg4wsVEDmu7BPBjMzGME1gmkLTWmePYaHYjdpd")
        );
    }

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override(ERC721)
        returns (string memory)
    {
        require(_exists(tokenId), "tokenId doesn't exist");
        return getTokenURI(tokenId);
    }

    function contractURI() public view virtual returns (string memory) {
        return getContractURI();
    }
}
