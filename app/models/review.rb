class Review
    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(viewer,movie,rating = 0)
        @viewer = viewer
        @movie = movie
        @rating = 0
        @@all << self
    end

    def self.all
        @@all
    end


    def viewer
        @viewer
    end

    def movie
        @movie
    end
    end
