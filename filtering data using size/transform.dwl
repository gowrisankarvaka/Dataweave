%dw 2.0
output application/json
---
payload filterObject (value, key, index) -> sizeOf(value) == 1

// filtering data based on size