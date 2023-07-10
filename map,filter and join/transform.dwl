%dw 2.0
import * from dw::core::Arrays
output application/json
---
/*join(payload.productName,payload.productPrices,(p1)-> p1.id,(p2)-> p2.id) map
{
    ($.l ++ ($.r - 'id'))
}*/

(payload.productName map
{
    (payload.productPrices filter ((item, index) ->$.id contains item.id) map ((item, index) -> (item) ++ ($ -'id')))
}) -{}


/*(payload.productName map
{
    (payload.productPrices filter ((item, index) ->$.id contains item.id) map ((item, index) -> (item) ++ ($ -'id')))
}) filter ($!={})
*/


/*
[{
  "id": 321,
  "price": 1200,
  "product": 23,
  "name": "Keyboard",
  "school": "abc"
 },
 {
  "id": 123,
  "price": 600,
  "product": 23,
  "name": "Mouse",
  "school": "def"
 },
 {
  "id": 345,
  "price": 12000,
  "name": "Monitor",
  "school": "ghi"
}]
*/