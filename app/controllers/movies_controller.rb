class MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    id = params["id"]
    movie = Movie.find_by(id: id)
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"]
    )
    movie.save
    if movie.save
      render json: movie.as_json
    else
      render json: { errors: movie.errors.full_messages }, status: 422
    end
  end

  def update
    movie = Movie.find_by(id: params["id"])
    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.director
    movie.english = params["english"] || movie.english
    movie.save
    if movie.save
      render json: movie.as_json
    else
      render json: { errors: movie.errors.full_messages }, status: 422
    end
  end

  def destroy
    movie = Movie.find_by(id: params["id"])
    movie.destroy
    render json: {"movie:": "destroyed"}
  end

end