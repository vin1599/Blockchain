pragma solidity >=0.4.17 <0.7.0;

contract ReportCard {
    string name;
    uint rollno;
    uint batch;
    uint mark1;
    uint mark2;
    uint mark3;
    uint mark4;
    uint result;
    string status;
    
    function ReportCard(string names, uint roll,uint batchno,uint sub1,uint sub2,uint sub3,uint sub4) public {
        name = names;
        rollno = roll;
        batch = batchno;
        mark1 = sub1;
        mark2 = sub2;
        mark3 = sub3;
        mark4 = sub4;
        
        result = mark1 + mark2 + mark3 + mark4;
        result = result * 100 / 400;
        if (result < 40)
            status = "fail";
        else
            status = "pass";
    }
    function getdetails() public view returns(string, uint, uint, uint, uint, uint, uint, string){
        return (name,rollno,batch,mark1,mark2,mark3,mark4,status);
    }
}
