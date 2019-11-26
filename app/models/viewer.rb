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
    Review.all.select {|r| r.viewer == self}
  end

  def reviewed_movies
    self.reviews.map {|m| m.movie}
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    hash = Hash.new
    Review.all.each do |x|
      hash[x.movie] = self.reviewed_movie?(movie)
    end

    # hash.each do |k,v|
    #   if v == true && k = Movie.reviews
    #     Review.k
    #   end

    # binding.pry
  end
end
