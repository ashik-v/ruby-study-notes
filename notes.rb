#interesting way to use return
[1,2,3].each do |e|
  puts e
  #return
end
# => 1

puts 'x'*80

#block with explicit call
def my_method(&my_block)
  my_block.call
end

my_method do
  puts 3
end

puts 'x'*80

#block with yield
def my_method_with_yield
  yield
end

my_method_with_yield do
  puts 5
end

puts 'x'*80

#fizzbuzz - fizz - divisible by 3, buzz 5, fizzbuzz 3 and 5
puts (1..100).to_a.each { |e| e }

puts 'x'*80

#You have an array of numbers, each number can appear exactly an even number of times.
#One number appears an odd number of times. Identify which number appears an odd number of times.
numbers = [1,1,3,3,2,2,3]
p numbers.uniq.select { |e| numbers.count(e).odd? } #=> [3]
p numbers.tally.select { |number, count| count.odd? }.keys #=> [3]

puts 'x'*80

=begin You have a class called 'station' and an array of all instances of it ("the universe"),
each station has an array of references to other instances of 'station' (zero or more).
This represents a link from one to the other. Given two instances of stations,
determine if there is a way to get from one to the other.
=end

class Station
  attr_accessor :stations

  def initialize
    @stations = []
  end

  def self.connected?(a, b)

  end
end

a = Station.new
b = Station.new

a.stations << b
b.stations << a

station_array = [a,b]

puts 'x'*80

class Polygon
  class << self
    attr_accessor :sides
  end
  @sides = 10
end

p Polygon.sides