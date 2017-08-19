pragma solidity ^0.4.0;

contract Calculator {
    uint addResult;
    
    function addNumber (uint num1, uint num2) {
        addResult = num1 + num2;
    }
    
    function getResult() constant returns (uint) {
        return addResult; 
    }
    
}


Transaction costs are the costs for sending the contract code to the ethereum blockchain, they depend on the size of the contract.
Execution cost - the costs for storing global variables and the runtime of the method calls.




pragma solidity ^0.4.0;

contract Calculator {
    uint addResult;

/*
    function addNumber (uint num1, uint num2) {
        addResult = num1 + num2;
    }
    
    function getResult() constant returns (uint) {
        return addResult; 
    }
    
    function calldoAddition() returns (uint) {
        return doAddition(4, 6);
    }
*/  
}


blockchain is making both the data and the messages distributed. right now data is not centralised on the internet. the messages are.

the network and the database are stored. there is no data connection piece to blockchain. the network and the database are together. 

every node stores a state database. as long as even one node is up, your database is up. there is no connection creation. 



There is an address TYPE. 
(predefined variable)

Its programmable money. 


Address.balance 
Adddress.balance



pragma solidity ^0.4.0;

contract Calculator {
    uint32 public addResult = 98;
    int public number = -97;
    bool public result;
    
    uint addResult;


    function doAddition (uint _num1, uint _num2) returns (uint) {
        addResult = _num1 + _num2;
        return addResult;
    }
    
    function getResult() constant returns (uint) {
        return addResult; 
    }
    
    function calldoAddition() returns (uint) {
        return doAddition(4, 6);
    }
 
}



// can change uint32 to uint8 to reduce bytes


pragma solidity ^0.4.0;

contract Calculator {
    uint public addResult;
    bool public result;
   // address public
   
   
  // storage is a keyword
    

    function doAddition (uint _num1, uint _num2, bytes32 _name) returns (uint, bool) {
        addResult = _num1 + _num2;
        
        if (_name == "danielle") {
            addResult = _num1 + _num2;
            result = true;
            return (addResult, result);
        }
        
        else {
            result = false;
            return(0, result);
        }
            
    }
    
    function getResult() constant returns (uint) {
        return addResult; 
    }
    
    function calldoAddition() returns (uint, bool) {
        return doAddition(4, 6, "danielle");
    }
 
}


