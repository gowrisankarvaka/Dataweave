%dw 2.0
output application/json
---
payload mapObject (v1, k1, i1) -> (k1): v1 mapObject (value, key, index) ->(key): (value ++
{
    (security: 'authorized') if(value.password ~= 'pass'),
    (security: 'unauthorized') if(value.password ~= 'fail'),
    (security: null) if(value.password != 'fail' and value.password != 'pass')
})