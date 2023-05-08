%dw 2.0
output application/json
---
details: payload map
{
    id: $.id,
    (1 to 10 map (item) ->
    {
        ('name' ++ item): ($.SourceData contains item)
    })
}

// converting string to boolean based on sourcedata
// if value is matching with key then print true else false