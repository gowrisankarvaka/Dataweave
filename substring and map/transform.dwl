%dw 2.0
import * from dw::core::Strings
output application/json
var data = "search_category:incorporated_company,status_category:active"
---
//{(data splitBy ',' map ('"'++($ splitBy ':')[0]++'"') : ('"'++($ splitBy ':')[1])++'"')}
{(data splitBy ',' map ('"'++ substringBefore($,':')++'"'): ('"' ++ substringAfter($,':') ++ '"'))}

/*
{
  "\"status_category\"": "\"active\"",
  "\"search_category\"": "\"incorporated_company\""
}
*/