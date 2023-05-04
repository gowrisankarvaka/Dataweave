%dw 2.0
output application/json
---
(payload.dt pluck
{
    primaryID: $.@primaryID,
    childField1: $.childLayer.field1,
    childField2: $.childLayer.field2
})