class Review
    attr_accessor :viewer, :movie, :rating


    @@all = []
  
    def initialize(viewer, movie, rating)
      @viewer = viewer
      @movie = movie
      @rating = rating
      self.class.all << self
      #@@all << self
    end
  
    def self.all
      @@all
    end

    def reviewed_movie(movie)
        self.all 
        
    end 


end
