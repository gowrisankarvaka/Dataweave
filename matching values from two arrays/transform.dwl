%dw 2.0
var input1 = ["ID", "text1", "text12", "text123"]
var input2 = {
  "text": "abc",
  "text1": "abcd",
  "textabc": "abc",
  "text123": "test",
  "textID": "text"
}
output application/json  
---
input2 -- (keysOf(input2) -- input1)