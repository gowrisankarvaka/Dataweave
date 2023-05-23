%dw 2.0
output application/json
var arr = [0,1,2,3,4,5,6,7,8,9]
---
//(payload.message splitBy ' ') [-1 to 0] joinBy ' '
{
    even: arr filter isEven($),
    odd: arr filter isOdd($)
}