%dw 2.0
output application/json
---
payload map
{
    isSuccess: $.isSuccess,
    errorMessage: $.errorMessage,
    TransId: $.TransId,
    records: flatten($.*records)
}

//combining all records under one root