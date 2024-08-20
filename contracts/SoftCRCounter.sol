// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

contract SoftCRCounter {
    string public name;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner () {
        require(owner == msg.sender, "Solo el owner puede cambiar este valor");
        _; /* se sustituye con el código de la función que modifica */
    }

    event DataModified (address indexed editor, string key, string value);
    // Entre más índices, más caro el gas

    function setName(string memory _name) onlyOwner public {        
        name = _name;
        emit DataModified(msg.sender, "name", _name);
    }

}
