# don't use method return values for error messages
# using raise
#   creates an exception object
#   halts the entire program; looks ugly - not the best
#   method return value will be skipped
#   by default raise creates an instance of the runtime error class
#   you can specify an exception class when you raise
#   you can specify an exception class you want to rescue

class OvenOff < StandardError
end

class OvenEmpty < StandardError
end

class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise OvenOff, "You need to turn the oven on first"
    end

    if @contents == nil
      raise OvenEmpty, "There's nothing in the oven"
    end
    "golden brown #{contents}"
  end
end

dinner = ['turkey', nil , 'pie']
oven = SmallOven.new
oven.turn_on
dinner.each do |item|
  begin
    oven.contents = item
    puts "Serving #{oven.bake}"
  rescue OvenEmpty => error
    puts "Error: #{error.message}."
  rescue OvenOff
    oven.turn_on
    retry
  ensure
    oven.turn_off
  end
end

class MyError < StandardError
end

begin
  raise MyError, "Exception"
rescue
  puts "Rescued!"
end