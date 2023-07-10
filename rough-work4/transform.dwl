%dw 2.0
import * from dw::core::Arrays
output application/json
var arr =  [{
   "email": "aa@aa.com",
   "RegistrationDate": "2023-05-09T19:06:39Z"
  },
  {
   "email": "bb@bb.com",
   "RegistrationDate": "2023-05-09T18:28:30Z"
  },
  {
   "email": "dd@dd.com",
   "RegistrationDate": "2023-05-09T14:33:40Z"
}]
---
join(payload,arr,(p1)-> p1.email,(a1)-> a1.email) map
{
    ($.l -'id'),
    RegistrationDate: $.r.RegistrationDate
}

/*
payload filter ((item, index) -> arr.email contains item.email) map
{
    RegistrationDate: arr.RegistrationDate[$$],
    ($ - 'id')
}
*/

//payload1 map $.email joinBy ',\n' // for this you need to change the format as text/plain