pragma solidity ^0.4.0;

contract Calculator {
    uint public addResult;
//    int public number;
//  float public addResult1;
    bool public result;
    bytes32 public _name1 = "neeraj"
    string public _name2 = "neeraj"
    address public owner = 0x4b0897b0513fdc7c541b6d9d7e929c4e5364d2db;

    function doAddition(uint _num1, uint _num2, bytes32 _name) returns (uint, bool) {
//    Explain this as part of float
//        addResult = 1.5 + _num2 + 0.5;
        if (_name == "neeraj") {
            addResult = _num1 + _num2;
            result = true;
            return (addResult,result);
        }
        else {
            result = false;
            return(0,result);
        }


    }

    function getResult() constant returns (uint) {
        return addResult;
    }

    function calldoAddition() returns (uint, bool) {
        return doAddition(4,6,"neeraj");
    }

}
