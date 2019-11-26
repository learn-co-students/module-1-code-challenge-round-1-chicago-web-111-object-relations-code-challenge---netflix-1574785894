# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#inception = Movie.new("Inception")
#p inception.title
#inception.title = ("Jurrasic Park")

review_one = Review.new("Ebert", "Inception", 4)
review_two = Review.new("Roger", "99baloons", 5)
#p review_one.rating
#p review_one.viewer
p viewier_reviews
p viewer_reviewed_movies

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
