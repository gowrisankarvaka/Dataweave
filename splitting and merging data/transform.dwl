%dw 2.0
output application/json
var arr = ["address1","city","state","zip"]
var data = payload.customerAddress splitBy  ','
---
{
    id: payload.customerId,
    (arr map ((item, index) -> (item): data[index]))
}

// spliting input and merging into single object