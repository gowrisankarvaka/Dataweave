%dw 2.0
import * from dw::util::Values
output application/json
---
((payload mask 'Type' with '****')  mask  'Currency' with '****' mask  'SSN' with ($ replace /^[0-9]{3}-[0-9]{2}/ with '***-**'))

// masking the values by using mask function