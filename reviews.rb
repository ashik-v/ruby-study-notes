lines = []
File.open("reviews.txt") { |review_file| lines = review_file.readlines }

relavant_lines = lines.select { |line| line.include?("Truncated") }
reviews = relavant_lines.reject { |relevant_line| relevant_line.include?("--") }

def find_adjective(line)
  words = line.split
  words[words.find_index("is") + 1]
end

adjectives = reviews.map do |review|
  find_adjective(review)
end

puts "Truncated is"
adjectives.each { |adjective| puts adjective }
