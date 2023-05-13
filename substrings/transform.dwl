%dw 2.0
import * from dw::core::Strings
output application/json
---
//AdditionalInfo: [(payload splitBy '.')[1], ((payload splitBy '.')[1] splitBy '-')[0]]
AdditionalInfo: [substringAfter(payload,'.'),substringAfter(payload,'.') substringBefore '-']



// removing special char using substring functions