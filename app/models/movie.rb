class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|r| r.movie == self}
  end

  def reviewers
    self.reviews.map {|m| m.viewer}
  end

  def average_rating
    reviews_list = Review.all.select {|m| m.movie == self}
    avg_ary = reviews_list.map {|r| r.rating}
    avg = avg_ary.sum/avg_ary.size.to_f
    avg.round(2)
  end

  def self.highest_rated
    hash = Hash.new
    Review.all.each do |x|
      hash[x.movie] = x.rating
    end

    max_value = hash.max_by {|k,v| v}
    max_value[0]
  end
end
