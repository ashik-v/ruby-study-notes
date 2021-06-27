#aliasing means referencing the same object
class CelestialBody
  attr_accessor :name, :type
end

altair = CelestialBody.new
altair.name = "Altair"
altair.type = "Star"
polaris = altair
polaris.name = "Polaris"
vega = polaris
vega.name = "Vega"

p altair.name, polaris.name, vega.name

# how not to spin up a default object (due to aliasing)
default_body = CelestialBody.new
defauly_body_type = "Planet"
bodies = Hash.new(default_body)
bodies["Mars"].name = "Mars"
p bodies["Mars"]
bodies["Europa"].name = "Europa"
bodies["Europa"].type = "Moon"
p bodies["Europa"]
p bodies

#hash default block (generate new unique object upon first time accessing)
bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "Planet"
  hash[key] = body
end

bodies["Mars"]
p bodies

bodies["Venus"]
p bodies

bodies["Mars"].type = "Moon"
p bodies

# code snippets for undersatnding default hash value / block behaviour
foods = Hash.new([])
foods['A'] << "Apple"
foods['A'] << "Banana"
foods['B'] << "Bacon"
foods['B'] << "Bread"

p foods['A']
p foods['B']
p foods

puts "*" * 50

foods = Hash.new { |h, k| [] }
foods['A'] << "Apple"
foods['A'] << "Banana"
foods['B'] << "Bacon"
foods['B'] << "Bread"

p foods['A']
p foods['B']
p foods

puts "*" * 50

foods = Hash.new { |h, k| h[k] = [] }
foods['A'] << "Apple"
foods['A'] << "Banana"
foods['B'] << "Bacon"
foods['B'] << "Bread"

p foods['A']
p foods['B']
p foods