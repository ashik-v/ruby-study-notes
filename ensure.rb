class TestError < StandardError
end
a = 5+5
begin
  raise TestError, "Stop!"
  rescue => error
    puts error.message
  ensure a = 5
end
puts a