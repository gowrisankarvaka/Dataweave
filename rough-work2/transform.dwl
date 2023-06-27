%dw 2.0
output application/json
var array1 =
[{
"Name": "Alex",
"Surname": "Thomas"
}]
var array2 =
[{
"Address": "KyleMore Street USA",
"Country": "United Sates"
}]
---

/*payload map (item, index) -> item update {
    case .date_f -> $ as Date{format:'dd/MM/yyyy'} as String{format:'yyyy-MM-dd'}
    case .date_ -> $ as Date{format:'dd-MM-yyyy'} as String{format:'yyyy-MM-dd'}
}*/

//array1 map ($ mergeWith array2[$$])
//[(array1 ++ array2) reduce ((item, accumulator={}) -> accumulator ++ item )]


payload1 map (item, index) -> item  update {
    case .RowID -> $[0 to -2] ++ index
}