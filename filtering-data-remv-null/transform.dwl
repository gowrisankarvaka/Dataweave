%dw 2.0
output application/json
---
(payload flatMap
{
    id: $.bea_order.Id map
    {
        id: $,
        flag: 'false'
    }
}.id filter ((item, index) -> item != null))
