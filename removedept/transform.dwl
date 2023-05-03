%dw 2.0
output application/json
var emp =
[
    {
        "empId" : 10,
        "desg" : "Sf",
        "age":27,
        "dept" : "jio"
    },
    {
        "empId" : 12,
        "desg" : "Sf",
        "age":27,
        "dept" : "vi"
    },
    {
        "empId" : 13,
        "desg" : "nm",
        "age":27,
        "dept" : "airtel"
    }
]
---
emp map 
{
    ($.dept): $ - 'dept' 
}