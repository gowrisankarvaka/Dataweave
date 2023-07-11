%dw 2.0
output application/json
---
// payload  update {
//     case .Items.Price -> $ as String{format:'.0#'}
// }

// payload  update {
//     case .Items.Price -> $ as String{format:'.00'}
// }

"RefinableString122:OR" ++ '("' ++ (payload1.ProcessTypes map $ joinBy '","' ++ '")')