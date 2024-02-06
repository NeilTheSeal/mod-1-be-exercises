# 1. Using #each, add to the method below, such that it takes in an array of names,
# and returns an array of all names upcased.

kardashians = %w[kris kim kourtney khloe rob]

def upcase_names(names)
  # your code here
  names.each(&:upcase!)
end

p upcase_names(kardashians)

# should return ["KRIS", "KIM", "KOURTNEY", "KHLOE", "ROB"]

# 2. Using #each, update the method below, such that it takes in an array of
# names, and returns a collection of the names that end in 'ie'

pets = %w[Brutus Lucky Goldie Pepper Odie]

def names_ending_in_ie(names)
  pets_ie = []
  names.each do |name|
    pets_ie.push(name) if name[-2, 2] == "ie"
  end
  pets_ie
end

p names_ending_in_ie(pets)

# should return an array of ["Goldie", "Odie"]

# 3. Using #each, update the method below, such that it takes in an array of
# integers, and returns the first number that is over 100 when squared.

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def first_num_thats_square_is_above100(nums)
  nums.each do |num|
    return num if num**2 > 100
  end
end

p first_num_thats_square_is_above100(nums)

# should return the integer 11
