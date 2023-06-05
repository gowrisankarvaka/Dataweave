%dw 2.0
output application/json
var prodIds = ['1','2']
---
payload filter ((item, index) -> !(prodIds contains item.PRODUCT_ID) or item.ORDER_ID > 1)

//filtering data based on given requirement

/*
[{
"PRODUCT_ID": "3",
"ORDER_ID": 1
},
{
"PRODUCT_ID": "1",
"ORDER_ID": 2
},
{
"PRODUCT_ID": "3",
"ORDER_ID": 2
}]
*/