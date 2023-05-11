%dw 2.0
output application/json
---
(0 to sizeOf(payload.number)/4 -1 map payload.number[0 to 4 *($+1)-1])[-1 to 0]

// printing the pattern