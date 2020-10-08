# Write a program that:
#   Asks the user to enter a sentence
#   Counts the total number of letters in the given sentence
#   Counts the total number of spaces in the given sentence
#   Counts the total numbers of digits in the given sentence
#   and prints the intormation out

# Example:

#  "Enter a sentence:"
#  here 12 plus 25
#  "Number of letters in the string is: 8"
#  "Number of spaces in the string is: 3"
#  "Number of digits in the string is: 4"

p "Enter a sentence:"
sentence = gets.chomp

letters = sentence.gsub(/[^a-z]/i, "")
letter_count = letters.length

spaces = sentence.count(" ")
digits = sentence.gsub(/[^0-9]/,"")
digits_count = digits.length
p "Number of letters in the string is: " + letter_count.to_s + ""
p "Number of spaces in the string is: " + spaces.to_s + ""
p "Number of digits in the string is: " + digits_count.to_s + ""