%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    zipCode: substringBefore(payload.zipCode,'-') as Number,
    pincode: substringAfter(payload.pincode,'-') as Number,
    name: payload.name replace /[^a-zA-Z]/ with ''
}

// removing special characters and printing remaining data


/*
{
    zipCode: (payload.zipCode splitBy '-')[0] as Number,
    pincode: (payload.pincode splitBy '-')[1] as Number,
    name: flatten(payload.name scan /[a-zA-Z]/) joinBy ''
}
*/