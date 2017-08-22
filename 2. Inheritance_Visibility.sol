pragma solidity ^0.4.0;

contract Calculator {
    uint public addResult;

    function doAddition(uint num1, uint num2) public returns (uint) {
        addResult = num1 + num2;
        return addResult;
    }

    function calldoAddition() returns (uint) {
        return doAddition(4,6);
    }

    function getResult() constant returns (uint) {
        return addResult;
    }

    function addResult() constant returns (uint) {
        return addResult;
    }
}

// this is the first option. it points to the first but it is very limited. it is not a copy, just a new pointer.

contract Interface {
    uint public interResult;



    function addNumber(uint num3, uint num4, address calcAddress) returns (uint) {


        Calculator calc = Calculator(calcAddress);
        return calc.doAddition(num3, num4);
    }
}

// this is the second option
creating a new calculator named superCalculator that inherits everything from Calculator. Choosing the IS operator makes this possible here. Other is using the address of the contract and the function structure. IS is an operator, and will cost gas. Look for the list of operators and how muh gas it will cost. 

contract superCalculator is Calculator {
    function getFinalResult() returns (uint) {
        return addResult;
    }


// this is calling the super. it is a hybrid model. 

    function calcFinalResult(address calcAddress) returns (uint) {
        Calculator calc = Calculator(calcAddress);
        return calc.addResult();
    }

}


// every user and every contract are single entities. they are the same as individuals. 

// to a certain extent, you can secure your variables

// keep the data and the logic seperate! everytime you create a new contract, you lose all the data. your schema is set in the contract. 