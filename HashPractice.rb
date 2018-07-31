#combining arrays into a hash 

birthday_list = ["balloons", "cake", "streamers", "hire a clown"]

birthday_prices = [12.99, 50.29, 1.00, 300]

birthday_hash = {} #created a new hash 
index = 0 

birthday_list.each do|each_item|
birthday_hash[each_item] = birthday_prices[index]
index += 1 
end
puts birthday_hash
puts birthday_hash.values
puts birthday_hash.keys