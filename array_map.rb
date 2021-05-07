a = %w{The Quick Brown Fox Jumps}

p a.map { |element| element + "!"}

puts "x" * 80

class Array
  def my_map(&block)
    b = []
    i = 0
    loop do
      break if i >= size
      b << block.call(self[i])
      i += 1
    end
    b
  end
end

p a.my_map { |element| element + "!"}