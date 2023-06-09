%dw 2.0
import * from dw::core::Dates
output application/json
---
payload map
{
    data: $ mapObject
    if($$~= 'date_')
    {
        ($$): $ as Date {format:"dd-MM-yyyy"} as Date {format: 'yyyy-MM-dd'}
    }else if($$~= 'date_f')
    {
        ($$): $ as Date {format:"dd/MM/yyyy"} as Date {format: 'yyyy-MM-dd'}
    }else
    ($$):$
}.data

// converting given date format to another date format. for this
// we can write the given date in the format of date and converting to required output