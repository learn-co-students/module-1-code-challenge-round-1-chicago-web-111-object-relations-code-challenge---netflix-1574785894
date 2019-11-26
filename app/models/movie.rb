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

  def average_rating
    ratings = self.reviews.map {|review|review.rating}
    return (ratings.sum / ratings.size)
  end

  #Movie.highest_rated
  #returns the Movie instance with the highest average rating.
  #Do last cause unsure
  def self.highest_rated
    return self.average_rating.max {|r1, r2| r1.average_rating.max <=> r2.average_rating.max}
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviewers = self.reviews.map {|review| review.viewer}
    reviewers.uniq
  end
end
