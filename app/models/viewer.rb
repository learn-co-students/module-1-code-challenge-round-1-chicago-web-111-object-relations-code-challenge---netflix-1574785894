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

  def reviewed_movie?(movie)
    reviews.include?(movie) ? true : false
  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating)
  end

  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.select {|movie| movie.viewer == self}
  end
end
