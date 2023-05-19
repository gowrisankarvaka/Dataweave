%dw 2.0
output application/json skipNullOn = 'everywhere'
---
sample_payload:payload.sample_payload map
{
    sample: $.sample map ((item, index) ->
    {
        (item mapObject (value, key, index) ->
        if(key ~='description') 'name': value else (key): value)
    })
}


/*
"sample_payload":payload.sample_payload map
{
    sample: $.sample map ((item, index) ->
    {
        tag_type: item.tag_type,
        code: item.code,
        name: item.description,
        option_code: item.option_code
    })
}
*/

// updating direction field in an array