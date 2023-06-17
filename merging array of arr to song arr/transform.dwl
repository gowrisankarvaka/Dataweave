%dw 2.0
output application/json
---
payload.products map ((it, index) -> (it) ++ {price:{((payload.price filter ((item, index) -> it.id == item.id )))}.cost})
