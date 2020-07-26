pragma solidity >=0.4.17 <0.7.0;



contract name {
    string custName;
    // uint256 custID;
    
    function custDetails(string name) public{
        custName = name;
    }
    function getDatails() public view returns(string){
        return(custName);
    }
}
