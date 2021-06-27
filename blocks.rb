def my_method(&my_block)
  puts "In the method, about to call the block..."
  my_block.call
  puts "Back in the method"
end

my_method do
  puts "In the block!"
end

puts "x" * 80

def my_complex_method(&my_block)
  puts "About to invoke the block..."
  my_block.call("ashik", "chunky")
  puts "Back in the method"
end

my_complex_method do |param_1, param_2|
  puts "In the block"
  puts param_1, param_2
end
