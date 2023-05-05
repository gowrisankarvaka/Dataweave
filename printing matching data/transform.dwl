%dw 2.0
output application/json
var data =
[{
  "pricingDetail": "a0x3Z0000090mZAQAY",
  "pricingDetailName": "Cash Back",
  "offerDescription": "Test",
  "id": "00k7A000005YX0JQAW"
 },
 {
  "pricingDetail": "a0x3Z0000090mZ9QAI",
  "pricingDetailName": "Redemption Processing Fee",
  "offerDescription": "Test",
  "id": "00k7A000005YX0LQAW"
 }
]
---
(payload flatMap (pay)-> pay.pricingDetailId map (out)->
{
    actionDate: pay.actionDate,
    sourceKey: pay.sourceKey,
    count: pay.count,
    pricingDetail: pay.pricingDetail,
    pricingDetailId: out
}) filter ((item, index) -> data.pricingDetail contains  item.pricingDetailId)

// extracting the pricingDetailId by using flatMap and iterating those Id's with map.
// after that writing the data what we want to print in output
// writing the keyword 'pay' belong's to flatMap for all data except priceDetailId
// for priceDetailId we are seperately mapped. so for priceDetailId we can write 'out' which is belong's to map



// finally we can get the matching data b/w two inputs based on priceDetailId