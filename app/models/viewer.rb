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
    Review.all.select do
      |review| review.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do 
      |review| review.movie
    end
  end

  def viewed_movie?(movie)
    self.reviews.any? { |review| review.movie == movie }
  end
  
  def rate_movie(movie,rating)
    if self.viewed_movie?(movie)
      #checks if viewed, and if such updates the rating value
      already_reviewed = self.reviews.find do
        |review| review.movie == movie
      end
      already_reviewed.rating = rating
    else
      Review.new(self,movie,rating)
    end
  end
end
