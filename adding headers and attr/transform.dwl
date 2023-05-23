%dw 2.0
output application/xml
ns xml http://www.w3.org/2001/XMLSchema-instance
---
{
    Test @('xmlns:xsi': xml):
    {
        Header: version: '2.1.0',
        tag: payload.tag
    }
}