%dw 2.0
output application/json
---
payload.test map
{
    acct_id: $.acct_id,
    orderitems: $.orderitems map ($ mapObject ((value, key, index) ->(key): lower(value) ))
}