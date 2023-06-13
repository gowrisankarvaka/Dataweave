%dw 2.0
output application/json
---
payload flatMap ($ pluck ((value, key, index) -> key ++ ' ' ++ value )) joinBy  ' '