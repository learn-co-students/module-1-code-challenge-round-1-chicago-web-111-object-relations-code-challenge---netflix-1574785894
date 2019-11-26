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

  def reviews
    Review.all.select{|person| person.viewer == self}
  end

  def reviewed_movies
    Review.all.select{|mov| mov.movies == self}
  end

  # def reviewed_movie?(movie)
  #   if #Viewer has reviewed Movie
  #     true
  #   else
  #     false
  #   end

  #   def rate_movie(movie,rating)
  #     if reviewed_movie?
  #       revise Review(self, movie, rating)
  #     else
  #       Review.new(self, movie, rating)
  #     end
  #   end
end
