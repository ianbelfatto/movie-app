class MoviesController < ApplicationController
  def all_movies
    all_movies = Movie.all
    render json: {
      message: all_movies
    }
  end

  def one_movie
    one_movie = Movie.find(2)
    render json: {
      message: one_movie
    }
  end
end
