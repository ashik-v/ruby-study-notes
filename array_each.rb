a = %w[The Quick Brown Fox Jumps]

class Array
  def my_each(&block)
    i = 0
    loop do
      break if i >= size

      block.call(self[i])
      i += 1
    end
  end

  def my_map(&block)
    result = []
    my_each do |e|
      result << block.call(e)
    end
    result
  end

  def my_reject(&block)
    my_select { |e| !block.call(e) }
  end

  def my_select(&block)
    result = []
    my_each { |e| result << e if block.call(e) }
    result
  end
end

a.each { |element| p element }

puts "x" * 25

a.my_each { |element| p element }

puts "x" * 25

p a.map { |element| "#{element}!" }

puts "x" * 25

p a.my_map { |element| "#{element}!" }

puts "x" * 25

p a.select { |element| element == "The" }

puts "x" * 25

p a.my_select { |element| element == "The" }

puts "x" * 25

p a.reject { |element| element == "The" }

puts "x" * 25

p a.my_reject { |element| element == "The" }
