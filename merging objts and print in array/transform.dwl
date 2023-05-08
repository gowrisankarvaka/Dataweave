%dw 2.0
output application/json
---
Acc: payload.ZCUSTWAR.IDOC - 'Z1SDC' pluck
{
    AcNam: $.ZCUST,
    Acnum: $.KUNR,
    (payload.ZCUSTWAR pluck ((value, key, index) ->
    {
     identifier: value.Z1SDC.KUNR,
     AcDes: value.Z1SDC.CNAM,
    }))
}

// removing Z1SDC by using '-' and converting the object to array and concatinating Z1SDC to both arrays