%dw 2.0
output application/json
---
payload map
{
    rate: $.rate*100,
    APY: $.APY*100
}