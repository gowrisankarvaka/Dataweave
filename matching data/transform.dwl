%dw 2.0
output application/json
---
payload.lineItems filter ((item, index) -> item.lineItemId == item.childLineItemIds[0]) map
{
   "parentId": $.parentId,
   "lineItemId": $.lineItemId ,
   "exportDate":  $.exportDate
}