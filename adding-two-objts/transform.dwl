%dw 2.0
output application/json
var pay = {
    "message": "Hello world!"
}
---
//adding payload1 and payload2 by using +. it will print the payload1 data in array and payload2 data outside of array

//([payload.dt.*Application.childLayer] + pay)


//adding payload1 and payload2 by using +. it will print the payload1 and payload2 in single array

payload.dt.*Application.childLayer + (pay) 