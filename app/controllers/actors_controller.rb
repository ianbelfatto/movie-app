class ActorsController < ApplicationController
  def single_actor
    actor = Actor.find_by(id: 2)
    render json: actor
  end

  def query_actor
    actor_name = params[:first_name]
    actor = Actor.find_by(first_name: actor_name)
    render json: {
      message: actor
    }
  end

  def body_actor
    actor_name = params[:first_name]
    actor = Actor.find_by(first_name: actor_name)
    render json: {
      message: actor
    }
  end
end
