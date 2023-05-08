%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
    l: payload filter $.a.t != 'adSC',
    s: payload filter $.a.t ~= 'adSC'
}

// filtering the data based on 'adSC'
