%dw 2.0
output application/json
---
payload flatMap $ map ((item, index) ->
{
    resourceAndDestinationType:
    {
        S: item.destinationType ++  item.resource
    }
} )


// merging values into single value