# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movie instance vars
clerks = Movie.new("Clerks")
tampopo = Movie.new("Tampopo")
officespace = Movie.new("Office Space")
terminator2 = Movie.new("Terminator 2")

andy = Viewer.new("andy101")
duke = Viewer.new("duke555")
havi = Viewer.new("havil4h")
alex = Viewer.new("xxalexx")

#viewer instance vars

#rating scale (do I need?)
#1-5





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
