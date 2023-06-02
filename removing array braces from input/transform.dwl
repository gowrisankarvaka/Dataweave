%dw 2.0
output text/plain
---
trim(write(payload,'application/json')[1 to -2])


// removing array braces from input and printing remaining data

/*
{
	"id": "abc",
	"values": ["US"]
}, {
	"id": "abc",
	"values": ["UK"]
}, {
	"id": "abc",
	"values": ["BC"]
}*/