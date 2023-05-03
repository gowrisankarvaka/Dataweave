%dw 2.0
output application/json
---
EMPLOYE_EXPORT_UCN: payload.EMPLOYE_EXPORT_UCN distinctBy ((item, index) -> (item.EMP_ID) ++ (item.EMP_DATE_EXPORT) as Date)
//removing the repeated data based on Id and date