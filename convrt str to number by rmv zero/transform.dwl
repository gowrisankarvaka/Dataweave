%dw 2.0
output application/json
---
payload map $.code as Number

// removing zero's from a given string