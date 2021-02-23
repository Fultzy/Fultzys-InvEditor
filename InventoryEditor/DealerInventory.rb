## Database of cars, parts, and services ##


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
