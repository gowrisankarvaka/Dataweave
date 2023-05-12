%dw 2.0
output application/json
---
RESPONSE:payload.RESPONSE map (value) -> value update {
    case .AUTWR -> $ as String
    case .SETWR -> $ as String
}

/*
RESPONSE:payload.RESPONSE map
{
    data: $ mapObject (value, key, index) ->
    if(key ~= 'SETWR' or key ~= 'AUTWR') 
    {
        (key): value as String
    }else (key): value
}.data
*/


// converting the fields in the format of number to string without changing other fields by using above two cases