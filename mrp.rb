class MRP < Struct.new(:code, :quantity, :due_date)
end

WO_1 =  MRP.new("PO123", "10", "2021-06-01")

p WO_1