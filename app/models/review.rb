

class Review
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating(num)
        self.class.all << self
    end

    def rating
        @@all
    end

    def self.all
        @@all
    end

    def viewer
        self.viewer
     end
 
   def movie
    self.movie
   end
    
        


end
