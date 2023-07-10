%dw 2.0
import * from dw::util::Values
output application/json
var var1 =[
    {
        "ContractNumber": "ABCDEG"
    },
    {
        "ContractNumber": "ITTTTTTTT"
    }
]
---
//var1 filter ((item, index) -> payload.ContractNumber contains item.ContractNumber)

//payload1 mask 'SSN' with ($ replace /[0-9]{3}-[0-9]{2}/ with '***-**')

payload2.skipped filter ((item, index) ->(item.reasons.code contains '1007') or (item.reasons.message contains 'Multiple lead match lookup criteria')) map ((item, index) -> (item.matchingRecord) )
