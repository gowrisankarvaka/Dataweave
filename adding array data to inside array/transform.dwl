%dw 2.0
output application/json
---
{
    ReturnMessage: payload.ReturnMessage,
    HasMore: payload.HasMore,
    Project: payload.Project flatMap ((item, index) -> item.Task map (item -'Task' ++ $)) filter ($.TaskId != 1960)
} 

// combining the array of arrays into single array by using flatmap and again map for the Task and removing the Task array data
// adding the project data to Task data and filtering the id !=1960