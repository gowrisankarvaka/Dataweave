%dw 2.0
output application/json
var data = 
[
    {
        "firstName": "Maria",
        "lastName" : "aa"
    },
    {
        "firstName": "Ana",
        "lastName" : "bb"
    },
    {
        "firstName": "Clara",
        "lastName" : "cc"
    }
]
---
payload map ((item, index) -> item update {
    case .name.firstName -> data.firstName[index]
    case .name.lastName -> data.lastName[index]
})

//updating some fields of input like firstname and lastname with another data