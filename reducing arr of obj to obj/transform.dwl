%dw 2.0
output application/json
---

//payload groupBy ($.ParentOptionID) pluck ((value, key, index) ->(key): value.OptionName)reduce ($ ++ $$)

{(payload groupBy ($.ParentOptionID) pluck ((value, key, index) ->(key): value.OptionName))}

/*
{
'47' : ['IBM Power Series', 'Datamatic-SPMR'] ,
'48' : ['Ovation', 'Other SCADA Tools']
}
*/