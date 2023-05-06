%dw 2.0
output application/json
---

payload mapObject ((value, key, index) -> 
if(key ~= 'Country')
{
    (key): value map $[0] joinBy  ''
}else
(key): value
)
 
/*
{
 EmpSalary: payload.EmpSalary,
 EmpName: payload.EmpName,
 TypeofEmploye: payload.TypeofEmploye,
 Country: payload.Country map $[0] joinBy  ''
}
*/

// getting first letters from an array