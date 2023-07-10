%dw 2.0
import * from dw::core::Strings
output application/json
---
/*
{(payload.rows.metricValues map ((item, index) ->
{
    (payload.metricHeaders map
    {
        ($.name): item.value[$$]
    })
}))}
*/


0 to 200 map
{
    Name: substringBefore(payload1.Name,'1') ++ $+1,
    LastName: payload1.LastName,
    email: substringBefore(payload1.email,'0') ++ $ ++ substringAfter(payload1.email,'0'),
    Approved: payload1.Approved
}
