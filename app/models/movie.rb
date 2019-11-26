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

  ##returns an array of all the Review instances for the Movie
  def reviews
    Review.all.select{|review_value| review_value.movie == self.title }
  end

  ##returns an arry of all of the Viewer instances that reviewed the Movie
  def reviewers
    self.reviews.map {|review_value| review_value.viewer}
  end

  ##### COME AND REFACTORreturns the average of all ratings for the Movie instance to average ratings, add all ratings together and divide by the total number of ratings
  def average_rating
    list = reviews #list of reviews that exist for this (self) movie instance
    ratings = reviews.collect {|m_instance| m_instance.rating}
    ratings_len = ratings.length 
    ratings_sum = ratings.inject(0) {|sum, rating_value| sum += rating_value}
    average = ratings_sum.to_f / ratings_len.to_f
    # binding.pry
  end

  def average_method
    list = Review.all.select{|review_value| review_value.movie == self} 
    ratings = list.collect {|m_instance| m_instance.rating}.length
    ratings_len = ratings.length 
    ratings_sum = ratings.inject(0) {|sum, rating_value| sum += rating_value}
    average = ratings_sum.to_f / ratings_len.to_f
  end
  #CLASS METHOD. returns the Movie instance with the highest average rating.
  def self.highest_rated
    all_movies = Review.all.map{|value| value.movie} #list of movies reviewed
    
    all_avg_ratings = all_movies.collect do |movie| 
    # binding.pry
    list = Review.all.select{|review_value| review_value.movie == movie}
    ratings = list.collect {|m_instance| m_instance.rating}
    ratings_len = ratings.length 
    ratings_sum = ratings.inject(0) {|sum, rating_value| sum += rating_value}
    average = ratings_sum.to_f / ratings_len.to_f
    end #array of average ratings
    
    high = 0
    name = nil 
    i = 0

    while i < all_avg_ratings.length do 
      if high < all_avg_ratings[i]
        high = all_avg_ratings[i]
        name = all_movies[i]
      end
      i += 1
      # binding.pry
    end
    return name
  end
end
