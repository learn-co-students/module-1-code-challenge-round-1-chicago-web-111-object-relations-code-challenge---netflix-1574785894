class Review
  attr_reader :viewer, :movie
  attr_accessor :rating
  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating if rating.is_a?(Integer) && rating.between?(1, 10)
    @@all << self
  end

  def self.all
    @@all
  end
end
