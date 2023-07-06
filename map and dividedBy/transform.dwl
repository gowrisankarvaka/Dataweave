%dw 2.0
output application/json
import * from dw::core::Arrays
---
payload divideBy 2 map ((item, index) -> {(item)}) map ((item1, index1) ->
{
    (item1 -- ['not_started','in_progress','completed']),
    "Courses Enrolled": if(item1.not_started==0 and item1.in_progress==0 and item1.completed==0) false else true
})
/*
[{
  "user_id": "27360",
  "email": "kbolton@hf.com",
  "creation_date": "2023-05-04 15:43:11"
  "Courses Enrolled": false
 },
 {
  "user_id": "27359",
  "email": "rafael.tavares@gmail.com",
  "creation_date": "2023-05-04 13:18:43",
  "Courses Enrolled": true
}]
*/