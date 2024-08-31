// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

/* Creado por Alvaro Araya coder at aao.cr */
contract SoftCRPayableEx {
    //mapping
    mapping(address => uint256) public balances;
    //payable
    //modifiers

    //funcion para enviar ether a un usuario

    //guardamos en mapping el address -> balance actual
    //modifier chequear que msg.value > 0
    modifier validValue() {
        require(msg.value > 0, "El valor debe ser mayor que 0.");
        _; /* se sustituye con el código de la función que modifica */
    }

    //enviar ether al contrato
    function depositToUser() external payable {
        // Lógica para manejar el depósito de Ether
        balances[msg.sender] += msg.value;
    }

    function getUserBalance(address _user) public view returns (uint) {
        return balances[_user];
    }

    //mapping address => value
    //withdrawUserFunds
    //required fundsForUser[msg.value] >= _fundsToWithdraw

    receive() external payable {
        /* revisar cómo funciona la lógica */
    }

    fallback() external payable {
        /* revisar cómo funciona la lógica */
    }
}
