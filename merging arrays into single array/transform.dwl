%dw 2.0
output application/json
---
items: payload.data flatMap ((item, index) -> 
{
    dt: item.products flatMap ((items, index) ->
    {
        dt1: items.variations map
        {
            uprice: $.price,
            eprice: $.price_unit,
            lineId: $.lineid,
            itemId: item.id
        }
    }.dt1)
}.dt)

// merging array of arrays into single array by using flatmap and mapping the fields based on requirement