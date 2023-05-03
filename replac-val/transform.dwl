%dw 2.0
output application/json
var ip2 = 
[{
"source": "CAN",
"target": "Canada"
},
{
"source": "IND",
"target": "India"
}]
---

payload map (item, index) -> 
{
    xxx: item.xxx,
    a: item.a map(value,index) -> 
    {
        city: (ip2 filter ((character, index) -> character.source == value.city)).target[0]
    }
}


