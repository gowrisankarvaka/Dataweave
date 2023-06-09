%dw 2.0
output application/json
---
{(payload map
{
    ($.field_key): ($.field_value)
})}