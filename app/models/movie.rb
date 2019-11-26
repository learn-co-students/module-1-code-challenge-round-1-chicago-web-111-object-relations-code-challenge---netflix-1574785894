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
    Review.all.select { |review|
      review.movie == self
    }
  end

  def reviewers
    reviewers = []
    Review.all.each do |review|
      if review.movie == self
        reviewers << review.viewer
      end
    end
    reviewers
  end

  def average_rating
    review_count = reviews.size
    total = 0
    self.reviews.each { |review| total += review.rating }

    return (total.to_f / review_count)
  end

  def self.highest_rated
    high = 2
    Review.all.each do |review|
      if review.rating > high
        high = review.rating
      end
    end
    return high
  end

end
