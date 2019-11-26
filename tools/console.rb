# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


movie_a = Movie.new("Cinderella")
movie_b = Movie.new("Dumbo")

viewer_c = Viewer.new("Jonathan")
viewer_d = Viewer.new("Jordan")

review_e = Review.new(viewer_c,movie_a,0)

Movie.all
Review.all
Viewer.all

viewer_c.reviews
viewer_c.reviewed_movies

movie_a.reviews
movie_a.reviewers

review_e.viewer
review_e.movie










# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
