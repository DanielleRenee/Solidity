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


pragma solidity ^0.4.0;

contract Calculator {
    uint public stateStorage1;
    // nothing called stateMemory! 
    uint[] public stateStorage2 = [1, 2, 3, 4, 5];
    uint[] public stateStorage3;
   
   
   function copyNumber() returns (uint[]) {
    //Define Variables
    
    uint[] storage localStorage1;
    uint[] storage localStorage2;
    uint[4] storage localStorage3;
    uint[] memory localMemory1;
    uint[] memory localMemory2;
    uint[4] memory localMemory3 = [uint(6), 7, 8, 9];
    uint[] memory localMemory4 = new uint[](2);
    
   }
   
 // default location of variables stored inside of function is storage.
 
 //three types:
 // 1. stateStorage
 // 2. localStorage
 // 3. localMemory
 
 // in blockchain, space is very costly
 
 // call data is a space from where retrieving any data is not possible
 // it's an intermediate stage
 // so, Call Data to Storage and Call Data to Memory are both not possible



 WORKING VERSION: 

 pragma solidity ^0.4.0;

contract Calculator {
    uint public stateStorage1;
    // nothing called stateMemory! 
    uint[] public stateStorage2 = [1, 2, 3, 4, 5];
    uint[] public stateStorage3;
   
   
   function copyNumber() returns (uint[], uint[]) {
    //Define Variables
    uint len;
    uint[] storage localStorage1;
    uint[] storage localStorage2;
    uint[4] storage localStorage3;
    uint[] memory localMemory1;
    uint[] memory localMemory2;
    uint[4] memory localMemory3 = [uint(6), 7, 8, 9];
    uint[] memory localMemory4;
    
    
    stateStorage3 = stateStorage2;
    stateStorage2.push(6);
    return (stateStorage3, stateStorage2);
    
   }
   
}


*/ Push is avaibale only for Storage Data location -to add a value at the end of an array

   default location of variables stored inside of function is storage.
 
three types:
 1. stateStorage
 2. localStorage
 3. localMemory
 
 // in blockchain, space is very costly
 
 // call data is a space from where retrieving any data is not possible
 // it's an intermediate stage
 // so, Call Data to Storage and Call Data to Memory are both not possible
 /*
    


