class Review #is join class of movie and viewer
    attr_reader :viewer, :movie
    attr_writer 
    attr_accessor :rating

    @@all = []

    def initialize(viewer, movie, rating) 
        @viewer = viewer
        @movie = movie
        @rating = rating #is integer
        @@all << self
    end

    def self.all
        @@all
    end



end
