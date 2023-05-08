%dw 2.0
output application/json
---
//flatten(payload pluck $)
flatten(valuesOf(payload))

// converting the given object to array. we can do this one in two ways
// by using pluck -> it iterates over an object and print output as array
// by using valuesOf -> it also takes the input as object and print output as array

// after merging the array of arrays into single array by using flatten