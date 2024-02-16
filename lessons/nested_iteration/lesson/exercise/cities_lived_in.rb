# cities_lived_in = {
#   michaela: ["Philadelphia", "Fort Collins", "Seattle"],
#   mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
#   pamela: ["Lansing"],
#   alex: %w[Seattle Columbus Philadelphia Austin]
# }

# Problem #1:
# Get a unique list of all of the cities that these humans have lived in
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

# cities_list = []

# cities_lived_in.each do |_person, cities|
#   cities.each do |city|
#     cities_list << city unless cities_list.include?(city)
#   end
# end

# p cities_list

# Problem #2:
# Write code that iterates through the `cities_lived_in` hash, and returns a list of
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

# Problem #3:
# Create a hash that has the city as a key, and the number of people that live in it as it's value:

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

cities_lived_in = {
  michaela: ["Philadelphia", "Fort Collins", "Seattle"],
  mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
  pamela: ["Lansing"],
  alex: %w[Seattle Columbus Philadelphia Austin]
}

cities_list = Hash.new(0)
cities_lived_in.each_value { |a| a.each { |c| cities_list[c] += 1 } }

p cities_list.sort.to_h
