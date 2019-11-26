class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review|
      review.viewer == self
    }
  end

  def reviewed_movies
    movies = []
    Review.all.each do |review|
      if review.viewer == self
        movies << review.movie
      end
    end
    movies
  end

  def reviewed_movie?(movie)
    Review.all.each do |review|
      if review.viewer == self && review.movie == movie
        return true
      else
        return false
      end
    end
  end


  def rate_movie(movie, rating)
    Review.all.each do |review|
      if review.viewer == self && review.movie == movie
        review.rating = rating
      else
        Review.new(self, movie, rating)
      end
    end
  end
  
end
