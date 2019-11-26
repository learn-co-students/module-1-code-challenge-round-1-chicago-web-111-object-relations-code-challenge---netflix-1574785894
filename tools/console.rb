# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

lordsawe = Viewer.new("Lordsawe")
swizz = Viewer.new("SwizzDefeatz")
kev = Viewer.new("K-Flo")

beautiful = Movie.new("It's Such a Beautiful Day")
interstellar = Movie.new("Interstellar")
martian = Movie.new("The Martian")
star_wars_6 = Movie.new("Star Wars: Revenge of the Sith")

review_1 = Review.new(lordsawe.username, beautiful.title, 5)
review_2 = Review.new(swizz.username, beautiful.title, 3)
review_3 = Review.new(kev.username, beautiful.title, 1)

review_4 = Review.new(lordsawe.username, interstellar.title, 4)
review_5 = Review.new(swizz.username, martian.title, 4)
review_6 = Review.new(kev.username, star_wars_6.title, 4)

# p lordsawe.reviews
# p swizz.reviewed_movies
# p kev.reviewed_movie?(beautiful.title) # should be true
# p kev.reviewed_movie?(interstellar.title) #shoudl be false
# p lordsawe.rate_movie(interstellar.title, 5)
# p kev.rate_movie(interstellar.title, 5)
# p beautiful.reviews
# p beautiful.reviewers
p beautiful.average_rating #REFACTOR METHOD
p Movie.highest_rated #works but needs SERIOUS REFACTORING and REORGANIZING i.e. it looks like noodles





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
0
