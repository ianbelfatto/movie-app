class MoviesController < ApplicationController
  def index
    all_movies = Movie.all
    render json: all_movies
    
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    movie.save
    render json: movie
  end

  def show
    one_movie = Movie.find_by(id: params[:id])
    render json: {
      message: one_movie
    }
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Movie deleted!"}
  end

end
