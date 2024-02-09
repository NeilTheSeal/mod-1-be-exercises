animals = { "dogs" => 3, "cats" => 5, "iguanas" => 2 }

# 1. return the value of dogs
# 2. add 3 parakeets
# 3. increase the amount of cats by 2

# puts animals["dogs"]
animals["parakeet"] = 3
# p animals
animals["cats"] = animals["cats"] + 2
# p animals

pet_names = %w[Fela Spot Patch Willy]
pet_names << "Claude"
p pet_names[0]
p pet_names.last
pet_names.shift
p pet_names

# 1. add “Claude” to the end of the array
# 2. access the first name in the list
# 3. access the last name in the list
# 4. remove “Fela” from the list
