// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BinaryToDecimal {
    function binaryToDecimal(string memory binaryString) public pure returns (uint256) {
        bytes memory binaryArray = bytes(binaryString);
        uint256 decimal = 0;
        for (uint256 i = 0; i < binaryArray.length; i++) {
            if (binaryArray[i] == '1') {
                decimal += 2 ** (binaryArray.length - 1 - i);
            }
        }
        return decimal;
    }
}





