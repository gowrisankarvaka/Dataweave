%dw 2.0
import * from dw::core::Dates
output application/json
---
("2022-11-25" ++ now() as Time {format: 'hh:mm:ss'}) as String {format: "yyyy-MM-dd'T'hh:mm:ss"}

//adding given date to time by using now() function convert it into time fromat and the convert it into string format