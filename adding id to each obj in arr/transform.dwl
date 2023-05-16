%dw 2.0
output application/json
---
payload flatMap ((value,idx) -> value.objects map ((item, index) ->
{
    data: item.data,
    id: value.id
}))

// adding the id to each object in an array