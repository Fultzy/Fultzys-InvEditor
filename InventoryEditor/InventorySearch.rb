
#cars in Year.to_i, Make.to_s, model.to_s format#
Carlist = [
  [1990, "Chevy", "Caprice"],
  [1997, "Chevy", "C2500"],
  [1992, "Nissan", "240SX"]
]
## set up as partnumber.to_s, price.to_i, ##
## and quantity.to_i##
Partlist = [
  [:D249928P, 499.95, 4],
  [:D249928B, 499.95, 5],
  [:PCP213, 59.99, 13],
  [:GockGock, 69.69, 420]
]
##setup in size.to_s, price.to_i, quantity.to_i
Tires =[
  ["245/45R17prl50014", 96.50, 10],
  ["245/45R17prl50002", 86.98, 8],
  ["RW245/45R17-15-13", 118.26, 20],
  ["RW245/45R17-15-22", 125.85, 12]
]
#setup as service.to_sym, price.to_i, laborhours.to_i##
Servicelist = [
  [:oil_change, 19.99, 30],
  [:tire_rotation, 5.99, 30]
]
#log in tested against login DB#
#not implamented#
def login?(us, pw)
  us = username
  pw = password
end
#DB admin search for change inventory#
def inventory_search
  puts "Search inventory: Cars? Parts? Services?"
  input = gets.chomp.downcase.to_s
  if input == "cars"
    add_remove_modify_cars
    again?
  elsif input == "parts"
    ##add more prompts or adding/removing stock
    puts "Part number search:"
    pn = gets.chomp.upcase.to_sym
    partsearch(pn)
    again?
  elsif input == "services"
    puts Servicelist
    ##add more prompts or adding/removing service
    puts "Enter service:"
    again?
  elsif input == nil
    puts "Incorrect responce, try again:"
    again?
  else
    puts "Incorrect responce, try again:"
    again?
  end
end

##will add to, remove from and modify Carlist##
def add_remove_modify_cars
  display_carlist
  puts "Would you like to add, remove or modify?"
  carimp = gets.chomp.to_s
  if carimp == "add"
    puts "Please enter the year:"
    year = gets.chomp.to_i
    puts "Please enter the make:"
    make = gets.chomp.to_s.capitalize
    puts "please enter the model:"
    model = gets.chomp.to_s.capitalize
    caradd = year, make, model
    Carlist << caradd
    puts "#{caradd} has been added to inventory!"
    display_carlist
  elsif carimp == "remove"
    puts "please select a car to remove:"
  elsif carimp == "modify"
    puts "Enter record to modify:"
  elsif input == nil
    puts "Incorrect responce, try again:"
  else
    puts "Incorrect responce, try again!"
  end
end

#shows car list after modification ##
def display_carlist
  Carlist.each {|x, y, z| puts "#{x}, #{y}, #{z}"}
end

#will find a part number for you and display it. ##
def partsearch(pn)
  Partlist.each {|x, y, z|
  if x == pn
    puts "Pn:#{x}, Price:#{y}, In Stock:#{z}"
  else
    puts "part not found!"
  end
  }
end

##propmt to return to main search, triggered by "Y"
def again?
  puts "Would you like to continue? Y or N"
  again = gets.chomp.upcase
  if again == "Y"
    inventory_search
  else
    puts "Thank you, have a great day!"
  end
end


puts "Welcome to Fultz's inventory editor!"
inventory_search
