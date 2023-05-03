%dw 2.0
output application/json
---
{
key: payload.key,
(payload.value reduce ((item, accumulator) -> accumulator ++ item))
}

//converting array to object 