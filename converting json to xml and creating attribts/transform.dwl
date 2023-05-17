%dw 2.0
output application/xml
---
'output':
{
    data: payload.data,
    (payload.lines map ('line' @(ID: $.line.number):
        {
            a: $.line.a,
            number: $.line.number
        }))
}

//converting json to xml and creating attributes in xml message