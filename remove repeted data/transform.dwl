%dw 2.0
output application/json
---
payload map
{
    data: if($.oderId=='123456' or $.operation=='remove') null else $
}.data filter ((item, index) -> item !=null)