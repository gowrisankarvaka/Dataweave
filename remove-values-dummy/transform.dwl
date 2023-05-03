%dw 2.0
output application/json
---
payload mapObject ((value, key, index) ->((key): value) if value != 'DUMMY')

// removing the values contains DUMMY by using if and mapObject