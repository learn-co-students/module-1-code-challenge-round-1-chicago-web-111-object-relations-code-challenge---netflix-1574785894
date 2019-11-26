
class Movie
  attr_accessor :title, :reviews
  attr_reader :average_rating

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all 
  end

  def title
    @title
  end

  def reviews
     @@Review.self = []
  end

  def reviewers
    @@Viewer.self = []
  end

  def average_rating
    
  end

  def self.Movie
  end

end
