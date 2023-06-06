%dw 2.0
output application/json
---
payload  update {
    case gst at .order.shipments.shipment -> gst filter ((item, index) -> item.shipmentId == '9001')
    }

/*
payload  update {
    case .order.shipments.shipment -> $ filter ((item, index) -> item.shipmentId == '9001')
}
*/