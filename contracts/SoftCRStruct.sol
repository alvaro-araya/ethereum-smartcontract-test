// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.26;

 /* Creado por Alvaro Araya coder at aao.cr */
contract SoftCRStruct {
    struct Car {
        string brand;
        uint year;
        bool crashed;
    }

    Car public car;

    function createCar (string memory _brand, uint _year, bool _crashed) public {
        /*
        car.brand = _brand;
        car.year = _year;
        car.crashed = _crashed;
        */
        car = Car(_brand, _year, _crashed);
    }

}