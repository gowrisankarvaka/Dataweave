<env:Envelope xmlns:env="http://www.w3.org/2003/05/soap-envelope">
	<env:Header>
		<m:reservation xmlns:m="http://travelcompany.example.org/reservation" env:role="http://www.w3.org/2003/05/soap-envelope/role/next" env:mustUnderstand="true">
			<m:reference>uuid:093a2da1-9345-739r-ba5d-pqff98fe8j7d</m:reference>
			<m:dateAndTime>2001-11-29T13:20:00.000-05:00</m:dateAndTime>
		</m:reservation>
		<n:passenger xmlns:n="http://mycompany.example.com/employees" env:role="http://www.w3.org/2003/05/soap-envelope/role/next" env:mustUnderstand="true">
			<n:name>Åke Jógvan Øyvind</n:name>
		</n:passenger>
	</env:Header>
	<env:Body>
		<p:itinerary xmlns:p="http://travelcompany.example.org/reservation/travel">
			<p:departure>
				<p:departing>New York</p:departing>
				<p:arriving>Los Angeles</p:arriving>
				<p:departureDate>2001-12-14</p:departureDate>
				<p:departureTime>late afternoon</p:departureTime>
				<p:seatPreference>aisle</p:seatPreference>
			</p:departure>
			<p:return>
				<p:departing>Los Angeles</p:departing>
				<p:arriving>New York</p:arriving>
				<p:departureDate>2001-12-20</p:departureDate>
				<p:departureTime>mid-morning</p:departureTime>
				<p:seatPreference/>
			</p:return>
		</p:itinerary>
		<q:lodging xmlns:q="http://travelcompany.example.org/reservation/hotels">
			<q:preference>none</q:preference>
		</q:lodging>
	</env:Body>
</env:Envelope>
 
 
 
 %dw 2.0
output application/xml
ns env http://www.w3.org/2003/05/soap-envelope/
ns m http://travelcompany.example.org/reservation
ns role http://www.w3.org/2003/05/soap-envelope/role/next
ns under true
ns n http://mycompany.example.com/employees
ns p http://travelcompany.example.org/reservation/travel
ns q http://travelcompany.example.org/reservation/hotels
---
{
    "env:Envelop" @("xmlns:env":env):
    {
        "env:Header":
        {
            "m:reservation" @("xmlns:m":m,"env:role":role,"env:mustUnderstand":under):
            {
                "m:reference":{},
                "m:dateAndTime":{}

            },
            "n:passenger" @("xmlns:n":n,"env:role":role,"env:mustUnderstand":under):{
                "n:name":{},
            }
        },
        "env:Body":{
            "p:itinarary" @("xmlns:p":p):{
                "p:departure":{
                    "p:departing":{},
                    "p:arriving":{},
                    "p:departureDate":{},
                    "p:departureTime":{},
                    "p:seatPreference":{}
                },
                "p:return":{
                    "p:dparting":{},
                    "p:arriving":{},
                    "p:departureDate":{},
                    "p:departureTime":{},
                    "p:seatPreference":{}
                }
            },
            "q:lodging" @("q:lodging":q):{
                "q:preference":{}
            }
        }
    }
}