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
  #jsut define a spaceship method as below and mixin the comparable module

  def <=>(other)
    case grade
      when GRADE_SCORES[grade] < GRADE_SCORES[other.grade]
        return -1
      when GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
        return 1
      else
        return 0
    end
  end
end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"


puts "I'll take #{first_steak.inspect}" if first_steak < second_steak