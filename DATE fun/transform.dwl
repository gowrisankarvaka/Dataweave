%dw 2.0
output application/json

var input2= {
"As of Date": [ "2023-06-30"]
}
---
// payload  update {
//     case .asofDate -> ($ reduce ($$ ++ $)) as Date {format: "MM/dd/yyyy HH:mm:ss"} as String{format:'MM/dd/uuu'}
// }

/*
{
"asofDate": "06/30/2023"
}
*/

input2 update {
    case ."As of Date" -> ($ reduce ($++$$)) as Date as String{format:'dd/MM/uuu'}
}


/*
{
"asofDate" : "30/06/2023"
}
*/