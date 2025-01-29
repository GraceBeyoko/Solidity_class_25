// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BitwiseMask {

    function bitwiseMask(uint8 x, uint8 mask) public pure returns (uint[8] memory) {
        uint[8] memory result; 

        // Iterate over all 8 bits of the uint8 variable
        for (uint i = 0; i < 8; i++) {
            if (x & mask != 0) {
                result[i] = mask; // If the bit is set, store the mask (=2^i)
            } else {
                result[i] = 0; // If the bit is not set, store 0
            }
            mask <<= 1; // Shift the mask left by 1 
        }
        
        return result;
    }
}



