# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
tyler = Viewer.new('tyler')
eric = Viewer.new('eric')
your_name = Movie.new('Your Name')
a_silent_voice = Movie.new('A Silent Voice')
tyler.rate_movie(your_name, 5)
tyler.rate_movie(a_silent_voice, 7)
eric.rate_movie(your_name, 3)
eric.rate_movie(a_silent_voice, 9)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
