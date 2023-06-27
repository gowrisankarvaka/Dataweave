%dw 2.0
output application/json
---
// here the requirement is to we hava  a pay load that payload need to be transformed to desired o/p i.e have to map//

payload.Details flatMap (item, index) ->item.Codes map 
{
  Name: item.Name,
  Codes: $,
  Descriptions: item.Descriptions[$$]
}
