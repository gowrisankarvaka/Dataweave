%dw 2.0
output application/json
var arr= [
  {
  "SiteID": "19",
  "MerchantID": null
 },
 {
  "SiteID": "0006908",
  "MerchantID": "null"
 },
 {
  "SiteID": "0007401",
  "MerchantID": "null"
 },
 {
  "SiteID": "0009415",
  "MerchantID": "386203"
 }]
---
payload filter ((item, index) -> !(arr.MerchantID contains item.MerchantID))

// comparing both arrays and filtering the unmatched data from both arrays by using filter