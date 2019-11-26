class Review
    attr_reader :viewer, :movie
    attr_accessor :rating
    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def viewer
        @viewer #got stuck here and couldnt move forward
    end
    
    def movie
        @movie #got stuck here and couldnt move forward
    end

end
