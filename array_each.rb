a = %w[The Quick Brown Fox Jumps]

i = 0
loop do
  break if i >= a.size

  p a[i]
  i += 1
end

puts "x" * 25

class Array
  def my_each(&block)
    i = 0
    loop do
      break if i >= size

      block.call(self[i])
      i += 1
    end
  end
end

a.each { |element| p element }

puts "x" * 25

a.my_each { |element| p element }
