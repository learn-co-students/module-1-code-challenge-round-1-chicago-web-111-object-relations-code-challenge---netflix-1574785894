class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def movie_reviews
    Review.all.self
  end

  def movie_reviewers
    Viewer.all.self
  end
end
