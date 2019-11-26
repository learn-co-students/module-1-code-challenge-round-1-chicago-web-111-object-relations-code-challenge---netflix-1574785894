class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self #self.class.all
  end

  def self.all
    @@all
  end

  def average_rating
    #returns avg rating (int) for this movie (based on instances of rating assoc with user)
    #avg = sum / num of ratings (array length??)
  end

  def highest_rated
    #returns highest rated movie
  end


end
