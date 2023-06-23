%dw 2.0
output application/json
var arr =[{
    Name: "Raja",
    EmpId: "324"
  },
  {
    Name: "Gopal",
    EmpId: "524"
  }
]
---
Response: {(arr map
{
    Item:{
        Name: $.Name,
        Emp: $.EmpId
    }
})}