# Anagram - a word, phrase, or name formed by rearranging the letters of another.
#  For example, cinema is an anagram of iceman. 

# Your job is to write a program that receives two words from the user separated by a comma.
#  Your program should print "true" if the words are anagrams of each other and "false" if they are not. 

p "Enter two words separated by a comma"

user_words = gets.chomp.split(",")

word1_letters=user_words[0].downcase.gsub(" ","").strip.split("").sort
word2_letters=user_words[1].downcase.gsub(" ","").strip.split("").sort

# p word1_letters
# p word2_letters

# p word1_letters==word2_letters

if word1_letters.length==word2_letters.length && word1_letters==word2_letters
  p "true"
else
  p "false"
end






