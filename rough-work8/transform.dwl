%dw 2.0
import * from dw::core::Objects
output application/json
---
//payload dw::core::Objects::divideBy 2

payload1 update {
    case .values ->  ($ splitBy ',' ) map if($ contains 'country') $ replace 'country' with 'countryName' else $
}