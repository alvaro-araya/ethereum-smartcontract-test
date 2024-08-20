// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

contract SoftCRModulo2Clase2Ex6 {
    string[] storedInfo;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    uint256 public counter;

    event DataModified(
        address indexed editor,
        string indexed key,
        string value
    );

    modifier checkStoredInfo(uint256 _index) {
        require(_index < storedInfo.length, "Index out of bounds");
        _;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "Solo el owner puede modificar el valor");
        _;
    }

    function addInfo (string memory _value) public onlyOwner {
        storedInfo.push(_value);
    }

    function getOneInfo(uint256 _index) public view returns (string memory) {
        return storedInfo[_index];
    }

    function updateStoredInfo(uint256 _index, string memory _value)
        public
        onlyOwner
        checkStoredInfo(_index)
    {
        emit DataModified(msg.sender, "storedInfo", _value);
        storedInfo[_index] = _value;
    }
}
