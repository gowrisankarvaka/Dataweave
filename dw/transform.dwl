%dw 2.0
output application/json
var duprecords = ["Source","Relation","First Name","Last Name","DOB","DOD","Address","City","State","Zip","Phone #"]
---
payload map ((item, index) -> 
    {
        (item -- duprecords),
        (0 to sizeOf(item)/10-4 map 
        {
            ('Source' ++ $$+1):((item.*Source)[$]),
            ('Relation' ++ $$+1): ((item.*Relation)[$]),
            ('First Name' ++ $$+1): ((item.*'First Name')[$]),
            ('Last Name' ++ $$+1): ((item.*'Last Name')[$]),
            ('DOB' ++ $$+1): ((item.*'DOB')[$]),
            ('DOD' ++ $$+1): ((item.*'DOD')[$]),
            ('Address' ++ $$+1): ((item.*'Address')[$]),
            ('City' ++ $$+1): ((item.*'City')[$]),
            ('State' ++ $$+1): ((item.*State)[$]),
            ('Zip' ++ $$+1): ((item.*Zip)[$]),
            ('Phone #' ++ $$+1): ((item.*'Phone #')[$]),
        })
    })