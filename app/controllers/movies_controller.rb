class MoviesController < ApplicationController

  def show_all
    movies = Movie.all.order(:id)
    render json: movies.as_json
  end

  def show_one
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    render json: movie.as_json
  end

end
