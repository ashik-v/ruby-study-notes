class Person
  attr_accessor :name

  def introduction
    "Hello, my name is #{name}!"
  end
end

class ListWithCommas
  attr_accessor :items
  def join
    return "#{items.join(" and ")}" if items.size == 2
    return "#{items.first}" if items.size == 1
    last_item = ", and #{items.last}"
    items.pop
    other_items = items.join(", ")
    other_items + last_item
  end
end