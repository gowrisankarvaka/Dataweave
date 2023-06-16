%dw 2.0
import * from dw::util::Values
output application/json
var arr = ['firstName','lastName']
---
payload map (($ -- arr) ++ {name: $.firstName ++ ' ' ++ $.lastName} mask  'age' with '*****' mask 'salary' with 'XXXXX')

