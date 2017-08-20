pragma solidity ^0.4.0;

contract Calculator {
    uint public stateStorage1;
    uint[] public stateStorage2 = [1,2,3,4,5];
    uint[] public stateStorage3;

    function copyNumber() returns (uint[])  {
    // Define Variables
        uint[] storage localStorage1;
        uint[] storage localStorage2;
        uint[4] storage localStorage3;
        uint[] memory  localMemory1 ;
        uint[] memory  localMemory2;
        uint[4] memory  localMemory3 = [uint(6),7,8,9];
        uint[] memory  localMemory4= new uint[](2);

    //Use of new Keyword
/*        localMemory4[0] = 2;
        localMemory4[1] = 3;
        localMemory4 = stateStorage2;
        return (localMemory4);
*/

    // Storage State Variables to Storage State Variables - Copy
/*        stateStorage3 = stateStorage2;
        stateStorage2.push(6);
        return (stateStorage3, stateStorage2);
*/

    // Storage State Variables to Local Memory Variable - Copy
/*      localMemory1 = stateStorage2;
        stateStorage2.push(6);
        return (localMemory1, stateStorage2);
*/

    //Storage State Variables to Local Stoarge Variable - Reference
/*        localStorage1 = stateStorage2;
        stateStorage2.push(6);
        return (localStorage1, stateStorage2);
*/
   //Storage Local Variable to Storage State Variable - Copy
/*        localStorage1.push(5);
        stateStorage2 = localStorage1;
        localStorage1.push(6);
        return (stateStorage2, localStorage1);
*/

    //Storage Local Variable to Storage Local Variable - Reference
/*        localStorage1.push(5);
        localStorage2 = localStorage1;
        localStorage1.push(6);
        return (localStorage2, localStorage1);
*/

    //Storage Local Variable to Memory Local Variable - Copy
/*        localStorage1.push(5);
        localMemory1 = localStorage1;
        localStorage1.push(6);
        return (localMemory1, localStorage1);
*/

    //Memory Local Variable to Memory Local Variable - Copy
/*        localMemory4 = localMemory3;
        delete localMemory3;
        return (localMemory2, localMemory3);
*/

    //Memory Local Variable to  Storage State Variable - Copy
/*        stateStorage2 = localMemory3;
        delete localMemory3;
        return (stateStorage2, localMemory3);
*/

    //Memory Local Variable to Storage Local Variable - Not Possible
/*        localStorage1 = localMemory1;
          delete localMemory3;
          return (stateStorage2, localMemory3);
*/

    }

}
