// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

contract SoftCRModulo2Clase2 {
    uint256[5] arregloEstatico;
    uint256[] arregloDinamico;
    string[] names;

    uint256 public counter;

    event DataModified(
        address indexed editor,
        string indexed key,
        string value
    );

    modifier checkNamesLenght(uint256 _index) {
        require(_index < names.length, "Index out of bounds");
        _;
    }

    function incCounter() public {
        counter++;
    }

    function getCounter() public view returns (uint256) {
        return counter;
    }

    function addNumberArregloDinamico(uint256 _numero) public {
        arregloDinamico.push(_numero);
    }

    function getArregloDinamico() public view returns (uint256[] memory) {
        return arregloDinamico;
    }

    function setName(string memory _name) public {
        emit DataModified(msg.sender, "Name", _name);
        names.push(_name);
    }

    function readNames(uint256 _index)
        public
        view
        checkNamesLenght(_index)
        returns (string memory)
    {
        return names[_index];
    }

    function editNameArray(uint256 _index, string memory _newName)
        public
        checkNamesLenght(_index)
    {
        names[_index] = _newName;
    }
}
