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
  
  def viewer_reviews
    Review.all.self
  end

  def viewer_reviewed_movies
    Movie.all.self
  end
end
