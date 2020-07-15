#Now taken what you have done in food_match_1 return an array with with the highest person/persons and their count.  Example would be [[{:name=>"Tom", :like_count=>4}, {:name=>"Mike", :like_count=>4}]]

people = [{:name => "Laura", :likes => ["pizza", "cake", "tequila", "apples", "steak"]}, {:name => "Kevin", :likes => ["pizza", "chicken", "pasta", "cerial", "pop"]}, {:name => "Tom", :likes => ["beer", "icecream", "tequila", "apples", "steak"]}, {:name => "Pat", :likes => ["pizza", "cake", "coffee", "garlic", "soda"]}, {:name => "Raghu", :likes => ["pizza", "carbs", "wiskey", "grapes", "oranges"]}, {:name => "Bob", :likes => ["broccoli", "cheese", "bread", "hotdog", "chimchanga"]}, {:name => "Mike", :likes => ["cabbage", "kiwi", "tequila", "apples", "steak"]}, {:name => "Jealni", :likes => ["cookies", "freeFood", "sweets", "candy", "steak"]}]

laura_likes =  people.at(0).fetch(:likes)

like_count = 0 

like_tracker = []
people.each do |person| 
    like_count = 0 
      if person.fetch(:name) != "Laura" 
        laura_likes.each do |like|
          if person.fetch(:likes).count(like) == 1
            like_count = like_count + 1
          end
        end
      like_count_per_person = {:name => person.fetch(:name), :like_count => like_count}
      like_tracker.push(like_count_per_person)
    end
end

p like_tracker

highest_person = []
 like_tracker.each do |person|
    if highest_person.at(0) == nil
      highest_person.push(person)
    else 
      if person.fetch(:like_count) > highest_person.at(0).fetch(:like_count) 
        highest_person = []
        highest_person.push(person)
      elsif person.fetch(:like_count) == highest_person.at(0).fetch(:like_count)
        highest_person.push(person)
      end
    end
  end

p highest_person

# if highest_person.count == 1
#  p  "The best match is #{highest_person.at(0).fetch(:name)}"
# elsif highest_person.count == 0 
#   p "Im sorry but no one likes the same things as you" 
# else
#   names = []
#     highest_person.each do |person|
#       name = person.fetch(:name)
#       names.push(name)
#     end
#   p "The best matches are #{names.to_sentence}"
# end