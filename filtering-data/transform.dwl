%dw 2.0
output application/json
var arr = "2023-06-06"
---
//payload filter ((item, index) -> item.city != 'delhi') map $.name joinBy ','
payload filter ((item, index) -> item.city == 'hyd') map $.name joinBy ','

//arr as Date as String{format:'MMMM uuu'}