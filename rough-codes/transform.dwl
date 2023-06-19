%dw 2.0
import * from dw::core::Strings
import * from dw::core::Arrays
import * from dw::util::Values
output application/json
var arr = "\"999\""

var arr1 ={
 "CreditCard":"4567–1234–9087"
}

var arr2 ={ 
 "url":"https://xyz.com/api/Emp/999"
}

var arr3 = ["a:b","c:d"]
---
//read(arr) as Number

//arr1  update { case .CreditCard -> $ replace /[0-9]{4}/ with '****' }
//arr1 mapObject(v,k,i) -> (k): v mask v with ($ replace /^[0-9]{4}/ with '****')
//arr1 pluck ((value, key, index) ->(key):value) map $ mask 'CreditCard' with '****-****-****'
//arr1 pluck ((value, key, index) ->(key):value) map $ mask 'CreditCard' with ($ replace /[0-9]{4}/ with '****')

//(arr2.url splitBy '/')[-1]
//flatten(arr2.url scan /[0-9]/) joinBy ''
//substringAfterLast(arr2.url,'/')
//slice(arr2.url splitBy '/',5,6) reduce ($$ ++ $)

//underscore("casualPlaces-required Yes")
//"casualPlaces-required Yes" replace /[-,' ']/ with '_'

//arr3 map {(($ splitBy ':')[0]): ($ splitBy ':')[1]}
//arr3 map {(($ splitBy ':')reduce ($$)): ($ splitBy ':')reduce ($)}

//payload.AU groupBy ((item, index) -> substringAfter(item,'-')[0 to 3])
payload.AU groupBy ((item, index) -> substringAfterLast(item,'-')[0 to 3])