%dw 2.0
output application/json
var names = ["User ID","User Status"]
---
payload flatMap ((item, index) -> {(names map ($) : item[$])})


// printing only two fields from the given input