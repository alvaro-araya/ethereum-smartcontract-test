// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

contract SoftCRMappings {
    mapping(address => bool) public whitelist;
    string public name;

    function addToWhitelist(address _address) public {
        whitelist[_address] = true;
    }

    function disableFromWhitelist(address _address) public {
        whitelist[_address] = false;
    }

    function removeFromWhitelist(address _address) public {
        delete whitelist[_address];
    }

    function setName(string memory _name) public {
        require(whitelist[msg.sender], "Usuario debe estar autorizado.");
        name = _name;
    }
}
