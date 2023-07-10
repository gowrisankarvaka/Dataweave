%dw 2.0
output application/json
---
// payload map
// ({
//     reference_id: $.reference_id,
//     dataint: $.dataint
// } ++ {(($.data replace '{' with '' replace '}' with '' splitBy ',') map (trim(($ splitBy '=')[0])): ($ splitBy '=')[1])})


DetailCollection:
{
    ABCId:now() as Number as String,
    ABCDate: now() as Date,
    Collection: payload1.ABC map
    {
        ABCDetails:
        {
            ABCNo: $.ABCNo,
            ABCCode: $.ABCCode
        }
    }
}
/*
{
	"DetailCollection": {
		"ABCId": "48462",
		"ABCDate": "2022-03-18",
		"Collection": [{
				"ABCDetails": {
					"ABCNo": "0001",
					"ABCCode": "0001"
				}
			},
			{
				"ABCDetails": {
					"ABCNo": "0002",
					"ABCCode": "0002"
				}
			},
			{
				"ABCDetails": {
					"ABCNo": "0003",
					"ABCCode": "0003"
				}
			}
 
		]
	}
}
*/