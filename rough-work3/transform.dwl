%dw 2.0
import * from dw::core::Objects
output application/json
var timeDiff = payload.lastModifiedTo as DateTime - payload.lastModifiedFrom as DateTime
---
//((timeDiff).hours * 60) + (timeDiff).minutes

// payload1 map (item, index) -> item update {
//     case .dt -> $ as LocalDateTime{format: 'yyyy-MM-dd HH:mm:ss'} as DateTime
// }

//payload2 divideBy 1
payload2 pluck ((value, key, index) ->(key):value)