pragma solidity ^0.4.0;

contract Calculator {

    struct calcStruct {
        uint addResult;
        int number;
        resultState result;
        address owner;
    }

    calcStruct public calcData;

    uint[] calcStruct1;

    enum resultState {True, False}

    event logResult(uint calculationResult, resultState success);

    function Calculator() {
        calcData.owner = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
    }

    modifier isOwner() {
        if (msg.sender == calcData.owner) {
            _;
        }
        else {
            throw;
        }
    }


    function doAddition(uint _num1, uint _num2, bytes32 _name) isOwner returns (uint, resultState) {
        if (_name == "neeraj") {
            calcData.addResult = _num1 + _num2;
            calcData.result = resultState.True;
            logResult(calcData.addResult, calcData.result);
            return (calcData.addResult,calcData.result);
        }
        else {
            calcData.result = resultState.False;
            logResult(0, calcData.result);
            return(0,calcData.result);
        }
    }

    function getResult() constant returns (uint) {
        return calcData.addResult;
    }

    function calldoAddition() returns (uint, resultState) {
        return doAddition(4,6,"neeraj");
    }

}
