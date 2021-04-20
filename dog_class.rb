# Head First Ruby Chapter 2
class Dog
  attr_accessor :name, :age

  def report_age
    puts "#{@name} is #{@age} years old"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to #{destination}"
  end
end

daisy = Dog.new
daisy.name = "Daisy"
daisy.age = 3
daisy.report_age
daisy.talk
daisy.move("bed")