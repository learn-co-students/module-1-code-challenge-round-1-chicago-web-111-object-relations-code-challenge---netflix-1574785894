

class Viewer
  attr_accessor :username
  
  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def username
      @username
  end

  def reviews
     @@Review.self = []
  end

  def reviewed_movies
   @@Movie.self = []
  end

  def reviewed_movie?(movie)
  # if self

  end

  def rate_movie(movie, rating)

  end
end

