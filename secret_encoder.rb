# Write a program that
#   asks the user for a secret message
#   and 'encode's the message by replacing vowels with other characters
#   Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5

# Your program should print the encoded message.

p "Enter in the secret you want to encode"
user_message = gets.chomp

encoded_message = user_message.gsub(/a/i,"1")
encoded_message = encoded_message.gsub(/e/i,"2")
encoded_message = encoded_message.gsub(/i/i,"3")
encoded_message = encoded_message.gsub(/o/i,"4")
encoded_message = encoded_message.gsub(/u/i,"5")

p encoded_message
