pragma solidity ^0.4.0;

contract ArrayContract {
    uint addResult;
    uint[10] array10;
// Four arrays each of length 3
    uint[3][4] array2;
    uint[] array3;
    byte[] name1;
    bytes name;
    string name2;
    function returnnumber(uint _len) returns (uint) {

        array10[0] = 5;
        array10[7] = 7;
        array2[0][1] = 7;

//        array3.length = _len;
        array3.push(4);
        array3.push(7);
        var length = array3.length;
        name.length = 7;
 //       name[0] = "n";
 //       name2[3] = "u";
        return (length);


    }



}
