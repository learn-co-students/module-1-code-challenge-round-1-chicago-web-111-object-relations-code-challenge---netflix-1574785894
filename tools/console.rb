# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Movies
movie1 = Movie.new("Despicable Me")
movie2 = Movie.new("Hunting")

# Reviewers
viewer1 = Viewer.new("Dut")
viewer2 = Viewer.new("Daniel")

# Reviews
review1 = Review.new(viewer1, movie1, 5)
review2 = Review.new(viewer2, movie2, 3)
review2 = Review.new(viewer2, movie1, 2)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
