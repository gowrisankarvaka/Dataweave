%dw 2.0
output application/json
---
payload update {
  case .ProductInformation -> $ map (item, index) ->(item mapObject (value, key, index) ->if(value contains 'US')
  {
    (key):value map (if($ == null) 'NA' else $)
  }else 
  (key):value
)
}


// payload update {
//   case .ProductInformation -> $ map (item, index) ->(item mapObject (value, key, index) ->if(value contains 'US')
//   {
//     (key):value map ($  default 'NA')
//   }else 
//   (key):value
// )
// }

/*
{
"ProductInformation": [
{
"0": [
"NA",
"NA",
"US"
]
},
{
"1": [
null,
null,
"UK"
]
}
]
}*/


