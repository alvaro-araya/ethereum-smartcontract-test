
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

contract SoftCRCounter {

    uint public counter;

    function incCounter () public {
        counter++;
    }

    function getCounter () public view returns (uint) {
        return counter;
    }
}
