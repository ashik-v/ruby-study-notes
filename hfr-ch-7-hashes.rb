# default hash values, normalizing input

votes =  ["Amber Graham", "Brian Martin", "Amber Graham", "Brian Martin", "Brian Martin"]

tally = Hash.new(0)

votes.each do |vote|
  tally[vote.upcase] += 1
end

p tally

# hashes as method parameters
puts "*" * 50

def area(options)
  options[:length] * options[:width]
end

puts area({length: 2, width: 3})

# hashes as method parameters but with a bigger list of parameters
puts "*" * 50

class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, options)
    self.name =  name
    self. age = options[:age]
    self.occupation = options[:occupation]
    self.hobby = options[:hobby]
    self.birthplace = options[:birthplace]
  end
end

amy = Candidate.new("Amy Nguyen", {age: 37, occupation: "Engineer", hobby: "Lacrosse", birthplace: "Seattle"})
p amy

# we can leave off the braces as long as the hash argument is the last one
george = Candidate.new("Georgey Porgey", age: 37, occupation: "Engineer", hobby: "Lacrosse", birthplace: "Seattle")
p george

#we run into trouble when we omit the hash parameter which means that we need to set a default
john = Candidate.new("John V", {})
p john

#typos are dangerous as they do not geenrate an error!
michelle = Candidate.new("Michelle Hudson", ageg: 22)
p michelle

#this is where keyword argguments come in! Name and Age are required, everything else is optional
class NewAndImprovedCandidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, age:, occupation: nil, hobby: nil, birthplace: nil)
    self.name =  name
    self. age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

ashik = NewAndImprovedCandidate.new("Ashik V", ageg: 26)

p ashik

