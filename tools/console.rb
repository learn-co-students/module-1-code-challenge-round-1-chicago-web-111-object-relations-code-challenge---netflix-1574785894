# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

alex = Viewer.new("alexbonwit")
joan = Viewer.new("joan")
tim = Viewer.new("tim")

lost = Movie.new("Lost in Translation")
mission = Movie.new("Mission Impossible")
us = Movie.new("Us")

thumbs = Review.new(alex, lost, 7)
popcorns = Review.new(joan, mission, 10)
sodas = Review.new(tim, us, 9)
justsaw = Review.new(tim, lost, 9)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
