%dw 2.0
output application/json
---
if(payload.mule.Header.user == 'user' and payload.mule.Header.password == 'pass') 'msg':'welcome to Home' else 'msg':'unathorized'


