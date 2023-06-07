%dw 2.0
import * from dw::core::Objects
output application/json
var details2 = {
  "bankaccountmap": {
    "1918": {
      "Number": "1918",
      "ItemId": "ABC1",
      "Account": "10192"
    },
    "6922": {
      "Number": "6922",
      "ItemId": "ABC2",
      "Account": "10184"
    },
    "1374": {
      "Number": "1374",
      "ItemId": "ABC3",
      "Account": "10128"
    }
  }
}

---
payload.Balance pluck (($$):$) map ($ mapObject ((value, key, index) -> value ++ details2.bankaccountmap[(key)] - 'Number'))


/*
[
  {
    "ID": "5238",
    "Location": {
      "LocationID": "5238",
      "LocationName": "AAA1"
    },
    "Number": "1918",
    "ItemId": "ABC1",
    "Account": "10192"
  },
  {
    "ID": "11635",
    "Location": {
      "LocationID": "11635",
      "LocationName": "AAA2"
    },
    "Number": "6922",
    "ItemId": "ABC2",
    "Account": "10184"
  }
]*/