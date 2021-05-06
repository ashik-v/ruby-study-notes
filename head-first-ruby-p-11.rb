# Head First Ruby
# Page 11
# gets, chomp, case statement, rand

puts "Enter name: "
name = gets.chomp

puts "Welcome, #{name}!"

target = rand(1..100)

number_of_guesses = 0

while number_of_guesses < 10
  puts "Enter guess: "
  guess = gets.chomp.to_i
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}! You guessed my number in #{number_of_guesses} guesses!"
    exit
  end
  number_of_guesses += 1
end

if number_of_guesses > 10
  puts "Sorry. You didn't get my number. My number was #{target}."
  exit
end
