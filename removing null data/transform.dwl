%dw 2.0
output application/json
---
result:payload.result map
{
    Id: $.Id,
    Name: $.Name,
    message: $.errors.message reduce $
} filter ($.message != null)

/*
{
"result": [
{
"Id": 135,
"Name": "ABC2",
"message": "Bad request"
},
{
"Id": 136,
"Name": "ABC3",
"message": "internal error"
}
]
}*/