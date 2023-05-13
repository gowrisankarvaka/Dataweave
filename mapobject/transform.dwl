%dw 2.0
output application/json skipNullOn = 'everywhere'
var data = ["OtherData","ScreeningQuestions"]
---
payload -- data ++
(Otherdata: payload mapObject ((value, key, index) -> ScreeningQuestions:value.ScreeningQuestions))