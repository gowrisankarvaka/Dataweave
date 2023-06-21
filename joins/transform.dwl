%dw 2.0
import * from dw::core::Arrays
output application/json
var arr1=[{
"userid": "27517",
"email": "jjosebadillo@hotmail.com"
},{
"userid": "27514",
"email": "cmartin@cfiemail.com"
},
{
"userid": "27515",
"email": "philip.dupuis@td.com"
}]
---
// it will print the matching data from both payloads and unmatched data as null values
outerJoin(payload,arr1,(p1)-> p1.user_id,(a1)-> a1.userid) map
{
    courseCode: $.l.course_id,
    courseName: $.l.course_name,
    userStatus: $.l.enrollment_status,
    enrolledDate: $.l.enrollment_created_at,
    expirationDate: $.l.course_begin_date,
    CompletionDate: $.l.course_end_date,
    userID: $.l.user_id,
    email: $.r.email
}

// it will print only matching data from both payloads

/*
join(payload,arr1,(p1)-> p1.user_id,(a1)-> a1.userid) map
{
    courseCode: $.l.course_id,
    courseName: $.l.course_name,
    userStatus: $.l.enrollment_status,
    enrolledDate: $.l.enrollment_created_at,
    expirationDate: $.l.course_begin_date,
    CompletionDate: $.l.course_end_date,
    userID: $.l.user_id,
    email: $.r.email
}
*/

// it will print matching data from both payloads and unmatched data from first payload

/*
leftJoin(payload,arr1,(p1)-> p1.user_id,(a1)-> a1.userid) map
{
    courseCode: $.l.course_id,
    courseName: $.l.course_name,
    userStatus: $.l.enrollment_status,
    enrolledDate: $.l.enrollment_created_at,
    expirationDate: $.l.course_begin_date,
    CompletionDate: $.l.course_end_date,
    userID: $.l.user_id,
    email: $.r.email
}
*/