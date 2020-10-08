# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"
numbers=gets.chomp.split(" ")

numbers = [numbers.first.to_i, numbers.last.to_i]

hand = numbers.sum

if hand > 21 && numbers[0]==11
  numbers[0]=1
  hand = numbers.sum
  p hand
elsif hand > 21 && numbers[1]==11
  numbers[1]=1
  hand = numbers.sum
  p hand
elsif hand > 21
  hand = 0
  p hand
else 
  p hand
end
