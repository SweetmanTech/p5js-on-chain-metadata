// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./OnChainMetadata.sol";

/**
 * @title On-chain metadata for ERC721,
 * making quick and easy to create html/js NFTs, parametric NFTs or any NFT with dynamic metadata.
 * @author Daniel Gonzalez Abalde aka @DGANFT aka DaniGA#9856.
 */
contract ERC721OnChainMetadata is ERC721, OnChainMetadata {
    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
        _addValue(
            _contractMetadata,
            key_contract_name,
            abi.encode("Meet the Mint Songs Team (MP4)")
        );
        _addValue(
            _contractMetadata,
            key_contract_description,
            abi.encode(
                string(
                    abi.encodePacked(
                        "This project was specifically designed with my first Ethereum collector, cxy.eth, in mind. Ethereum has become my home for creativity. Polygon is the chain I use to experiment with new types on on-chain EVM art. Ethereum is the chain I use once I'm convicted in my creative style to highlight my highest quality creations. This piece focuses on 100% on-chain metadata. Unlike most smart contracts, which return an IPFS url when platforms query the standard ERC721 tokenURI function, this smart contract stores the metadata JSON on-chain, forever. One of the most straight-forward benefits of this is the ability for other smart contracts to query specific metadata attributes. For most NFTs, other smart contracts can't know the metadata attributes because the tokenURI is just an IPFS cid. This NFT is stored, transparently & immutably on-chain. Other smart contracts will always, with 100% uptime, be able to know the metadata of this NFT and make informed decisions based on that metadata. All 100% trustlessly, unstoppably, & immutably stored on-chain. The art for this podcast nft is an MP4 visualization of the opening clip from the original podcast episode cxy.eth bought on Ethereum mainnet. You could call this a 1/1 derivative project. Thank you to cxy.eth for being my first collector on Ethereum. I made this for you <3. Also special thanks to the Mint Songs team for participating in this podcast episode. I love working with this team full 'o weapons. All royalty sales go to a shared Split contract owned equally by the Mint Songs team (0xBE2A84B8d2b09Ba4b7B8B7173D7cD64D7838C1F9). Original Mint Songs V2 purchase by cxy.eth found here: https://www.mintsongs.com/tokens/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93. Zora: https://zora.co/collections/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93 OpenSea: https://opensea.io/assets/ethereum/0x2b5426a5b98a3e366230eba9f95a24f09ae4a584/93"
                    )
                )
            )
        );
        _addValue(
            _contractMetadata,
            key_contract_image,
            abi.encode("ipfs://QmejE2hSTSkDEEfyg4vDfVMd28AyLEQRdhPd4LcacbR4QW")
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
        setTeamTraits();
    }

    function setTeamTraits() private {
        bytes[] memory trait_types = new bytes[](13);
        bytes[] memory trait_values = new bytes[](13);
        bytes[] memory trait_display = new bytes[](13);
        trait_types[0] = abi.encode("cxy.eth");
        trait_types[1] = abi.encode("sweetman.eth");
        trait_types[2] = abi.encode("dwight torculus");
        trait_types[3] = abi.encode("garrett hughes");
        trait_types[4] = abi.encode("jazii richardson");
        trait_types[5] = abi.encode("nikki bean");
        trait_types[6] = abi.encode("nick merich");
        trait_types[7] = abi.encode("nathan pham");
        trait_types[8] = abi.encode("grant joseph");
        trait_types[9] = abi.encode("kameron hayes");
        trait_types[10] = abi.encode("jeremy stover");
        trait_types[11] = abi.encode("wayne hoover");
        trait_types[12] = abi.encode("curtis macduff");
        trait_values[0] = abi.encode("collector");
        trait_values[1] = abi.encode("host");
        trait_values[2] = abi.encode("ceo");
        trait_values[3] = abi.encode("cto");
        trait_values[4] = abi.encode("artist success manager");
        trait_values[5] = abi.encode("community manager");
        trait_values[6] = abi.encode("director of growth");
        trait_values[7] = abi.encode("product manager");
        trait_values[8] = abi.encode("product designer");
        trait_values[9] = abi.encode("software engineer");
        trait_values[10] = abi.encode("software engineer");
        trait_values[11] = abi.encode("sofware engineer");
        trait_values[12] = abi.encode("software engineer");
        trait_display[0] = abi.encode("");
        trait_display[1] = abi.encode("");
        trait_display[2] = abi.encode("");
        trait_display[3] = abi.encode("");
        trait_display[4] = abi.encode("");
        trait_display[5] = abi.encode("");
        trait_display[6] = abi.encode("");
        trait_display[7] = abi.encode("");
        trait_display[8] = abi.encode("");
        trait_display[9] = abi.encode("");
        trait_display[10] = abi.encode("");
        trait_display[11] = abi.encode("");
        trait_display[12] = abi.encode("");
        _setValues(1, key_token_attributes_trait_type, trait_types);
        _setValues(1, key_token_attributes_trait_value, trait_values);
        _setValues(1, key_token_attributes_display_type, trait_display);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        virtual
        override(ERC721)
        returns (string memory)
    {
        require(_exists(tokenId), "tokenId doesn't exist");
        return _createTokenURI(tokenId);
    }

    function contractURI() public view virtual returns (string memory) {
        return _createContractURI();
    }
}
