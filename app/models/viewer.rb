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
    Review.all.select do |review|
      review.viewer == self
    end
  end 

  def reviewed_movies
    reviews.map do |review|
      review.movie
    end
  end

  def reviewed_movies?(movie)
    reviews?
  end

  def rate_movie(movie,rating)
    if reviewed_movies?
    Review.new(movie,rating,self)
    end
  else 




    
end
