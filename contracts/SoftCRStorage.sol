// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

contract SoftCRStorage {
    enum StatusType {OK, ERROR, WORKING}
    uint counter = 0;
    bool isFinished = false;
    address owner = 0x7561BB3E860DBdD37Bd03A9E292894965186FF88;
    string private storedInfo;


    function getOwner () public view returns (address) {
        return owner;
    }
} 