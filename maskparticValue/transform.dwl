%dw 2.0
import * from dw::util::Values
output application/json
---
payload mask 'SSN' with ($ replace  /^[0-9]{3}-[0-9]{2}/ with '***-**')
/*
payload mapObject (value, key, index) ->
if(key~='payload')
{
    (key): value map
    {
        data: $ mapObject (v,k,i) ->
        if(k~='Account')
        {
            (k): v mapObject (v1,k1,i1) ->
            if(k1~='SSN')
            {
                (k1): (v1 replace /^[0-9]{3}-[0-9]{2}/ with '***-**')
            }else
            (k1): v1
        }else
        (k): v
    }
}else
(key): value
*/


// masking the value of SSN upto some indexes only