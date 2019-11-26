# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Inception")
m2 = Movie.new("Nightcrawler")
m3 = Movie.new("Split")

v1 = Viewer.new("Lluis")
v2 = Viewer.new("John")
v3 = Viewer.new("Max")

r1 = Review.new(v1,m1,7)
r2 = Review.new(v2,m2,10)
r3 = Review.new(v3,m3,8)

# v1.reviews
# v1.reviewed_movies

# m1.reviews
# m1.reviewers

# v1.reviewed_movie?(m1)
# v1.rate_movie(m1,5)

v1.rate_movie(m1,10)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
