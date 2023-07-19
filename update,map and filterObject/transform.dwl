%dw 2.0
output application/json
var data = ['policyId','AssetName']
---
(payload  update {
    case .product.insuredItems -> $ map (item, index) -> item  update {
        case .insuredItems -> $ map ((item1, index1) -> item1 -- data filterObject ((value, key, index) -> !( key ~= 'ClauseFreeText' and isEmpty(value)) ))
    }
})