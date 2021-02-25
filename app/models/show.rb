class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        Show.where("rating = ?", Show.highest_rating).first
    end 

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        Show.where("rating = ?", Show.lowest_rating).first
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end

# Show
#   attributes
#     has data attributes given to it from a migration file
#     has a season
#     has a season column and attribute added from another migration file
#   .highest_rating
#     returns the rating of the TV show with the highest rating
#   .most_popular_show
#     returns the name of the TV show with the highest rating
#   .lowest_rating
#     returns the rating of the TV show with the lowest rating
#   .least_popular_show
#     returns the name of the TV show with the lowest rating
#   .ratings_sum
#     returns the sum of all the ratings of all the tv shows
#   .popular_shows
#     returns an array of all of the shows with a rating above 5
#   .shows_by_alphabetical_order
#     returns an array of all of the shows, listed in alphabetical order

# Finished in 1.16 seconds (files took 1.31 seconds to load)
# 10 examples, 0 failures