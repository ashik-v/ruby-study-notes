# comparable mixin (def <=> and you get to use <,>,>=,<=, between?)
class Steak
  GRADE_SCORES = {
      "Prime" => 3,
      "Choice" => 2,
      "Select" => 1
    }

  include Comparable
  attr_accessor :grade

  #No need to define >,<,<= methods
  #def >(other)
  #  GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
  #end
  #just define a spaceship method as below and mixin the comparable module

  def <=>(other)
    case grade
      when GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
        return -1
      when GRADE_SCORES[grade] == GRADE_SCORES[other.grade]
        return 0
      else
        return 1
    end
  end
end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

p first_steak > second_steak

#enumerable module as a mixin
#just define an each method
class WordSplitter
  attr_accessor :string
  include Enumerable

  def each
    string.split(" ").each { |word| yield word }
  end
end

splitter = WordSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
  puts word
end
#enables you to work on the object as opposed to splitter.string.split(" ")

puts splitter.first
puts splitter.string.split(" ").first
puts splitter.count
puts splitter.map { |word| word + " foo" }