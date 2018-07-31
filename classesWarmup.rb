
  class Element
def initialize (name, abbreviation, mass, number)
@name = name 
@abbreviation =abbreviation
@mass =mass
@number = number
  end 
  def name_return 
    @name
end
def reset_name = (new_element_name)
  @name = new_element name
end
hydrogen = Element.new("Hydrogen","H" ,1 , 1)#creating instance of a class/creating an object
oxygen = Element.new("Oxygen", "O", 16.01, 8)
puts hydrogen_return_name
hydrogen.reset_element_name = "Not hydrogen"
puts hydrogen_return_name

# class Animals 
# #attribute methods- accessor
# attr_accessor :name, :type, :age
# #return and overwrite
#   def initialize(name, type, age)
#     @name= name
#     @type = type
#     @age = age 
#   end 
#   def happy_birthday
#     @age = @age +1 
#     puts "Happy #{@age}  birthday #{@name}!"
#   end
  
# end
# sparky = Animals.new("Sparky", "Otter", 8)
# tigger = Animals.new("Tigger", "tiger", 4)
# puts sparky.age 
# #this is how i use the attr_accessorreturn portion 
# # sparky.age = 9
# # puts sparky.age
# sparky.happy_birthday
# tigger.happy_birthday
