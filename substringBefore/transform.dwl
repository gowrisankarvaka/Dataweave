%dw 2.0
import * from dw::core::Strings
output application/json
---
payload map ((item, index) -> Name: trim(substringBefore(upper(item.Name),'/')splitBy '-' reduce $$))



//printing first value in giving value


/*
[{
   "Name": "TEST"
},
{
 "Name": "TEST1"  
},
{
  "Name": "TEST2 "
}]
*/