%dw 2.0
import * from dw::core::Arrays
output application/json
var arr1 =
[{
employee : 1,
school : "A"
},
{
employee : 2,
school :"b"},
]

var arr2 = [{
employee : 1,
school :"C"
},
{
employee : 3,
school :"A"
}]

var one = arr1 filter((item, index) -> !(arr2.employee contains item.employee) or !(arr2.school contains item.school))
var two = arr2 filter((item, index) -> !(arr1.employee contains item.employee) or !(arr1.school contains item.school))
---
// First code for merged data

//(arr2 ++ arr1) distinctBy ($.employee)
//one ++ two
//arr1 filter ((item, index) -> arr2.employee contains  item.employee) ++ arr2

//Second code for filtered data

payload groupBy((item, index) ->item.myplanBc) mapObject((value, key, index) ->(key):(value filter ($.myplanQty >0) distinctBy $.myplan)) filterObject((value, key, index) -> sizeOf(value) >1) mapObject ($$): true