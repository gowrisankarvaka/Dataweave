%dw 2.0
output application/json skipNullOn = 'everywhere'
---
(payload.message splitBy ',') map (if($ == '-') null else trim($))

// splitting the payload using splitBy function based on ',' and applied map for oterations and applied if else condition inside map and removing the '-' and spaces by using trim function