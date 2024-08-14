// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

 /* Creado por Alvaro Araya coder at aao.cr */
contract SoftCRStoragewCounter {
    string private storedDataBC;
    address owner;
    uint32 counter;

    constructor(uint32 counter_) {
        counter = counter_;
        owner = msg.sender;
    }

    function setInfo(string memory data) external {
        require(msg.sender != owner, "Unicamente el owner puede cambiar el valor");
        require(bytes(data).length > 4, "La variable data debe ser mayor o igual a 5 caracteres");
        storedDataBC = data;
        counter++;
    }

    function getInfo() external view returns (string memory) {
        return storedDataBC;
    }

    function getInfoChanges () external view returns (uint32) {
        return counter;
    }

    function getOwner () external view returns (address) {
        return owner;
    }

}