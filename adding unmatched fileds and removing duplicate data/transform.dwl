%dw 2.0
output application/json
---
//removing duplicate data by using distinctBy and adding the unmatched values by using reduce function
{
    OrderDetails: (payload.OrderDetails - 'OrderLineDetails') ++
    OrderLineDetails: payload.OrderDetails.*OrderLineDetails groupBy $.LineID pluck $ flatMap ((item, index) -> 
    item map ((item1, index) -> item1  update {
        case .Quantity -> item.Quantity reduce ($ + $$ ) as String
    })) distinctBy $.LineID
}

/*
payload mapObject (value, key, index) -> 
if(key ~= 'OrderDetails')
{
    (key): value mapObject (v,k,i) ->
    if(k ~= 'OrderLineDetails')
    {
        ('OrderLineDetails'): (value.*OrderLineDetails groupBy $.LineID pluck $ flatMap ((item, index) -> item map ((item1, index) -> 
        item1  update {
            case .Quantity -> item.Quantity reduce ($ + $$ ) as String
        })) distinctBy $)
    }else
    ('OrderHeader'): value.OrderHeader
}else
(key): value
*/

// i was failed with above code which is in comment