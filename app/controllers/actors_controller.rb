class ActorsController < ApplicationController

  def actor
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end

  def show
    id = params["id"]
    actor = Actor.find_by(id: id)
    render json: actor.as_json
  end

  def post
    actor = Actor.find_by(
      id: params["id"]
    )
    render json: actor.as_json
  end

end
