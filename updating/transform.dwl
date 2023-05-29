%dw 2.0
output application/json  
---
payload  update {
    case .values -> $ map values: [$]
}

// adding the key to values data and printing those in array