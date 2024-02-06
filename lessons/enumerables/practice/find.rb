# All of the methods below have been started for you. To test your code, uncomment the line at the bottom of the page that
# prints out the return value of that method.

def find_first_seven_letter_word # this one is done for you
  words = %w[capricious berry unicorn bag apple festering pretzel pencil]

  words.find do |word|
    word.length == 7
  end

  # expected return value is "unicorn"
end

def no_waldo
  # words = %w[scarf sandcastle flag pretzel crow key]
  # found = words.find do |word|
  # Your code goes here
  # end

  # expected return value is nil
end

def find_waldo
  # words = %w[noise dog fair house waldo bucket fish]

  # Your code goes here

  # expected return value is "waldo"
end

def cannot_find_3_letter_words
  # words = %w[piglet porridge bear blueberry]

  # Your code goes here

  # expected return value is nil
end

def find13
  # numbers = [2, 13, 19, 8, 3, 27]

  # Your code goes here

  # expected return value is 13
end

def find_first_even_number
  # numbers = [3, 7, 13, 11, 10, 2, 17]

  # Your code goes here

  # expected return value is 10
end

def find_first_multiple_of3
  # numbers = [2, 8, 9, 27, 24, 5]

  # Your code goes here

  # expected return value is 9
end

def find_first_word_starting_with_q
  # words = %w[weirdo quill fast quaint quitter koala]

  # Your code goes here

  # expected return value is "quill"
end

def find_first_word_ending_with_er
  # words = %w[biggest pour blight finger pie border]

  # Your code goes here

  # expected return value is "finger"
end

def find_first_number_greater_than20
  # numbers = [1, 8, 19, 21, 29, 31, 34]

  # Your code goes here

  # expected return value is 21
end

# p find_first_seven_letter_word
# p no_waldo
# p find_waldo
# p cannot_find_3_letter_words
# p find13
# p find_first_even_number
# p find_first_multiple_of3
# p find_first_word_starting_with_q
# p find_first_word_ending_with_er
# p find_first_number_greater_than20
