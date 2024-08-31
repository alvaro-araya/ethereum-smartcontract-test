// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

/* Creado por Alvaro Araya coder at aao.cr */
contract SoftCRPayable {

    /* Notas:
       + Un address y un contrato pueden tener balance  
    */
    
    function sendViaTransfer(address payable _to) public payable {
        // This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    }

    /* Maneras de realizar transferencias: 
       transfer
       send
       call
    */

    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent,) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

     function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

}
