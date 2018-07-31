
cart_items = ["Lamps", "Phone case", "Shoes", "Book", "Alexa"]

cart_items_price = [105.23, 29.99, 40.21, 9.99, 159.00]


count = 1 

cart_items.each do |products|
  puts "Item #{count}: #{products}"
  count += 1
end

cart_total = 0    
# This is my total pric of all items 
cart_items_price.each do |price|
  cart_total = cart_total + price 
end

puts cart_total