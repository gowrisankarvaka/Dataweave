%dw 2.0
output application/json
---
payload map ((item, index) -> ({num: index+1,(item - 'jobs')}) ++ ('jobs': item.jobs map ((num: $$+1)++ ($))))

/*
payload map ((item, index) ->
{
    num: index + 1,
    name: item.name,
    jobs: item.jobs map
    {
        num: $$+1,
        'type': $."type"
    }
    
})
*/

// adding number field to each array in the input