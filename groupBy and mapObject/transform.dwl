%dw 2.0
output application/json
---
payload groupBy ($.Transaction_Key) mapObject ((value, key, index) -> (index): value )

/*
{

 "0":
 [{
   "Firstname": "Ramesh",
   "Transaction_Key": "00000278-b306-6ff9-c264-5fa0242c3efc"
  },
  {
   "Firstname": "Mahesh",
   "Transaction_Key": "00000278-b306-6ff9-c264-5fa0242c3efc"
  }],
 "1":
 [{
   "Firstname": "Dinesh",
   "Transaction_Key": "00000278-b306-6ff9-c264-5fa0242c3efd"
  },
  {
   "Firstname": "Ganesh",
   "Transaction_Key": "00000278-b306-6ff9-c264-5fa0242c3efd"
  }
 ]
}*/