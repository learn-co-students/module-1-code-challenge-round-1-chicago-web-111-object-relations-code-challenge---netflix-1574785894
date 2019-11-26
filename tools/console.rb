# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer1 = Viewer.new("movieLover") #loves all movies
viewer2 = Viewer.new("movieHater") #hates everything
viewer3 = Viewer.new("birdboxsucksdotcomdontatme") #specific tastes

movie1 = Movie.new("movie1")
movie2 = Movie.new("movie2")
movie3 = Movie.new("movie3")
movie4 = Movie.new("movie4")
movie5 = Movie.new("birdbox")

review1 = Review.new(viewer1,movie1,10)
review2 = Review.new(viewer1,movie2,10)
review3 = Review.new(viewer1,movie3,10)
review4 = Review.new(viewer1,movie4,10)
review5 = Review.new(viewer1,movie5,10)

review6 = Review.new(viewer2,movie1,1)
review7 = Review.new(viewer2,movie2,1)
review8 = Review.new(viewer2,movie3,1)
review9 = Review.new(viewer2,movie4,1)
review10 = Review.new(viewer2,movie5,10)

review11 = Review.new(viewer3,movie1,3)
review12 = Review.new(viewer3,movie2,7)
review13 = Review.new(viewer3,movie3,2)
review14 = Review.new(viewer3,movie4,8)
review15 = Review.new(viewer3,movie5,1)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
