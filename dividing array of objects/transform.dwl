%dw 2.0
import * from dw::core::Objects
output application/json
---
payload reduce ($$ ++ $) divideBy 3

// printing 3 fields as one object by using divideBy function