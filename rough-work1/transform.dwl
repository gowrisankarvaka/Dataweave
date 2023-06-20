%dw 2.0
import * from dw::core::Arrays
import * from dw::core::Strings
output application/json

var arr1 = {
 "firstName": "EmpFirstName",
 "lastName": "EmpLastName",
 "address": "EmpAddress"
}

var arr2 = ["a.csv","b.csv","c.xlsx","d.docx","e.docx"]

var arr3 = {
 "a" : ["12", "15", "17"] ,
 "b":["15", "18", "20", "12" , "89"]
}

var arr4 = {
 "number": "Hello612wor9ld!"
}
---
/*{
    'ASCII Value': charCode(payload."ASCII Value"),
    'Char at ASCII': fromCharCode(payload."Char at ASCII")
}*/

/*{
    keys: keysOf(arr1),
    Values: valuesOf(arr1)
}*/

//arr2 filter ((item, index) ->(item endsWith 'csv') or (item endsWith 'xlsx'))
//arr2 filter ((item, index) ->!(item endsWith 'docx'))

//arr3.a filter ((item, index) -> arr3.b contains item)
//arr3.b filter ((item, index) -> arr3.a contains item)

flatten(arr4.number scan /[0-9]/)