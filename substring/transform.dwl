%dw 2.0
import * from dw::core::Strings
import * from dw::core::Objects
output application/json
---
//flatten(payload map (IDOC: $ mapObject ((value, key, index) -> ((key splitBy '_')[1]):value) divideBy 3))
flatten(payload map (IDOC: $ mapObject ((value, key, index) -> (substringAfter(key,'_')):value) divideBy 3))
