class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self #revert?
  end

  def self.all
    @@all
  end

  def reviewed_movie?(movie) ##
    Review.all.select do |movie|
      if movie.viewer == self
        true
      else 
        false
      end
    end
  end

  def rate_movie(movie, rating)
    #creates rating to this movie for this viewer instance
    #if exists, re-assigns review (int) value
    Review.all.find do |movie|
      if movie.viewer == self
        @rating = rating
      else
        Review.new(self, movie, rating)
      end
    end
  end

  
end
