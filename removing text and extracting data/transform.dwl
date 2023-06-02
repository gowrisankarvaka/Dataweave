%dw 2.0
var x = payload.languageCode scan /'.*?'/
output application/json  
---
{
    id: flatten(x) reduce $$ [1 to -2],
    cid: flatten(x)  reduce $ [1 to -2],
    (test: true) if payload.languageCode != null,
    (test: false) if payload.languageCode == null
}

// removing text data from input and extracting the data into id and cid

/*
{ 
"id" : "19093",
"cid": "eaecca17-4f20-48c1-a35c-227d3c4ba4c6"
}
{
  "id": flatten(x) reduce $$[1 to -2],
  "cid": x[1][0][1 to -2]
}
*/