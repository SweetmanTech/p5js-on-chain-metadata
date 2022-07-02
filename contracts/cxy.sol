pragma solidity >=0.8.1;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./ERC721OnChainMetadata.sol";

contract CXY is ERC721OnChainMetadata {
    address cxy = 0x7b753919B953b1021A33F55671716Dc13c1eAe08;

    constructor()
        ERC721OnChainMetadata("Meet the Mint Songs Team (MP4)", "CXY")
    {}

    function claim() public onlyCxy {
        _safeMint(_msgSender(), 1, "");
    }

    modifier onlyCxy() {
        require(msg.sender == cxy, "CXY ONLY");
        _;
    }
}
