require "pry"

class Movie < ActiveRecord::Base

    # Create

    def self.create_with_title(movie)
        self.create(title: movie)
    end

    # Read

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(number)
        self.find(number)
    end

    def self.find_movie_with_attributes(key)
        self.find_by(key)
    end

    def self.find_movies_after_2002
        self.where("(release_date) > 2002")
    end

    # Update
    
    def update_with_attributes(x)
        self.update(x)
    end

    def self.update_all_titles(new)
        self.update(:title => new)
    end

    # Delete

    def self.delete_by_id(x)
        self.find_movie_with_id(x).destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end

end