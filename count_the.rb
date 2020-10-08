# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"
user_sentence = gets.chomp.downcase
user_sentence = user_sentence.gsub(/[^a-z0-9\s]/i, "")
p user_sentence
words = user_sentence.split(" ")

the_count = words.count("the")



p "'the' appeared " + the_count.to_s + " times."