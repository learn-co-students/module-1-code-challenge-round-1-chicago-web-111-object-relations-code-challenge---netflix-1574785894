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

  def reviews
    Review.all.select do
      |review| review.movie == self
    end
  end

  def reviewers
    self.reviews.map do 
      |review| review.viewer
    end
  end

  def average_rating
    avg = 0.0 
    ratings = self.reviews.map do
      |review| review.rating
    end
    rating_sum = ratings.reduce(:+)
    avg = rating_sum / self.reviews.count
  end

  def self.highest_rated
    self.all.max_by do
      |movie| movie.average_rating
    end
  end
end
