// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

 /* Creado por Alvaro Araya coder at aao.cr */
contract SoftCRStorageM2C1 {
    string storedInfo;
    address owner;
    address public lastExecutioner;
    uint countChanges;

    constructor(string memory storedInfo_) {
        storedInfo = storedInfo_;
        countChanges = 0;
        owner = msg.sender;
    }

    function setInfo(string memory storedInfo_) external {
        countChanges++;
        require(msg.sender == owner, "Unicamente el owner puede cambiar el valor.");        
        require(countChanges < 5, "Solo se puede cambiar hasta 4 veces el valor.");
        storedInfo = storedInfo_;
        lastExecutioner= msg.sender;
    }

    function getInfo() external view returns (string memory) {
        return storedInfo;
    }

    function getStoredInfoChanges () external view returns (uint) {
        return countChanges;
    }

    function getOwner () external view returns (address) {
        return owner;
    }

}