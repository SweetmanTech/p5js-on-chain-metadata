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
                "NFT - MP4 visualization of the opening clip with open-captions (Polygon).\n\nutility offered from Mint Songs V2 purchase by cxy.eth found here: https://www.mintsongs.com/tokens/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93"
            )
        );
        _addValue(
            _contractMetadata,
            key_contract_image,
            abi.encode(
                "https://bafybeigaazdsp7o3popqdpodyyb5rjqje47zcvdzw43lhney76bv4thk24.ipfs.dweb.link"
            )
        );
        _addValue(
            _contractMetadata,
            key_contract_external_link,
            abi.encode(
                "https://zora.co/collections/0x2B5426A5B98a3E366230ebA9f95a24f09Ae4a584/93"
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
                "NFT - MP4 visualization of the opening clip with open-captions (Polygon)"
            )
        );
        _setValue(
            1,
            key_token_image,
            abi.encode(
                "https://bafybeigaazdsp7o3popqdpodyyb5rjqje47zcvdzw43lhney76bv4thk24.ipfs.dweb.link"
            )
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
        return _createTokenURI(tokenId);
    }

    function contractURI() public view virtual returns (string memory) {
        return _createContractURI();
    }
}
