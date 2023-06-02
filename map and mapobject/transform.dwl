%dw 2.0
output application/json
---
{(payload map (item, index) -> item mapObject (value, key, index) ->
if(value ~= 'A' or value ~= '2019')
{
    (key): value
}else
{})}

// printing printing year and product from different objects into single object


/*[{
 "Product": "A",
 "Year": "2019"
 }
]*/