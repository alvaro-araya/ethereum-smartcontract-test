// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

 /* Creado por Alvaro Araya coder at aao.cr */
contract AlvaroSmartContract {
    string private storedDataBC;

    function setInfo(string memory data) external {
        storedDataBC = data;
    }

    function getInfo() external view returns (string memory) {
        return storedDataBC;
    }
}