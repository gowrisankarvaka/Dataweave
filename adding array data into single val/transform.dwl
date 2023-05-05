%dw 2.0
output application/json
---
[Org: payload reduce ($$ ++ $) pluck $ joinBy  ',']

//combining all the values of input into single object by using reduce,pluck,joinBY