%dw 2.0
output application/json
---
// payload update {
//     case .notification -> $ map $ - 'count'
//     case .notification1 -> $ map $ - 'count'
// }

payload mapObject (value, key, index) ->(key): value map ((item, index) ->item -'count' )