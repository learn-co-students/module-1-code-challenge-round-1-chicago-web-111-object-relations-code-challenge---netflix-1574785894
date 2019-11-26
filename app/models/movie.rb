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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviews.map do |review|
      review.viewer
    end
  end

  def average_rating
    # Attempted to find the proper way to use an enumerable (tried .map and .reduce) with 'self.reviews'
    # to add up the numbers found in review.rating then divide by the length of self.reviews
    # but was unable to get it to return the correct result.
  end

  def self.highest_rated
    # if I had been able to get #average_rating working, I would have used that to compare
    # the average ratings of all reviewed movies and return the highest number using a <=> comparison

  end

end
