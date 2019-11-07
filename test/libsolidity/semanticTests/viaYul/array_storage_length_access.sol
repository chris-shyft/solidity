contract C {
    uint[] storageArray;
    function set_get_length(uint256 len) public returns (uint256)
    {
        //storageArray = new uint[](len);
        while(storageArray.length < len) storageArray.push();
        while(storageArray.length > len) storageArray.pop();
        return storageArray.length;
    }
}
// ====
// compileViaYul: true
// EVMVersion: >=petersburg
// ----
// set_get_length(uint256): 0 -> 0
// set_get_length(uint256): 1 -> 1
// set_get_length(uint256): 10 -> 10
// set_get_length(uint256): 20 -> 20
// set_get_length(uint256): 0 -> 0
// set_get_length(uint256): 0xFF -> 0xFF
// set_get_length(uint256): 0xFFF -> 0xFFF
// set_get_length(uint256): 0xFFFF -> FAILURE # Out-of-gas #
