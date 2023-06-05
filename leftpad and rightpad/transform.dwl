%dw 2.0
import * from dw::core::Strings
output application/json
---
//payload map OrderInfo:($.Order ++ leftPad($.lineNo,3,0))

payload map OrderInfo: (rightPad($.lineNo,3,0) ++ $.Order)