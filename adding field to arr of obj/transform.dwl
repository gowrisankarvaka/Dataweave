%dw 2.0
output application/json
---
payload map ((item, index) ->
{
    myteam: (item.childRecords filter $.id == item.parentId).myTeam reduce $
} ++ item)

//adding myteam field to the array of objects