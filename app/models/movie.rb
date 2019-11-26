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
    Review.all.select{|mov| mov.movie == self}
  end

  def reviewers
    Review.all.select{|person| person.viewer == self}
  end

  # def average_rating
  #   self.reviews and pull all review integers
  #   Add all integers and divide by index+1


  # def self.highest_rated
  #   self.reviews.max
  # end

end
