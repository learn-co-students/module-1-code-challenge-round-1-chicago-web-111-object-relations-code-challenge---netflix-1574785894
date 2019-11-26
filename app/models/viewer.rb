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

  ##returns an array of Review instances associated with the Viewer instance
  def reviews
    Review.all.select{|review_value| review_value.viewer == self.username }
  end

  ##returns an array of Movie instances reviewed by the Viewer instance
  def reviewed_movies
    self.reviews.map {|review_value| review_value.movie}
  end
  
  ##a Movie instance as the argument, returns true if the Viewer has reviewed this Movie (if there is a Review instance that has this Viewer and Movie), returns false otherwise
  def reviewed_movie?(movie)
    if reviewed_movies.include?(movie)
      return true 
    else 
      return false 
    end
  end

  ##a Movie and Rating(num) instance as args. If the Viewer instance and the passed Movie instance are not already associated, this method should create a new Review instance. if this Viewer has already reviewed this Movie, assigns the new rating to the existing Review instance
  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      Review.all.select{|value| value.viewer == self.username and value.movie == movie}[0].rating = rating
      # binding.pry
    else
      Review.new(self.username, movie, rating)
      # binding.pry
      
    end
  end
end
