class ActorsController < ApplicationController
  def index
    all_actors = Actor.all
    render json: all_actors
  end
  
  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    )
    actor.save
    render json: actor
  end

  def show
    one_actor = Actor.find_by(id: params[:id])
    render json: one_actor
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.save
    render json: actor
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: {message: "Actor deleted!"}
  end

  # def query_actor
  #   actor_name = params[:first_name]
  #   actor = Actor.find_by(first_name: actor_name)
  #   render json: {
  #     message: actor
  #   }
  # end

  # def body_actor
  #   actor_name = params[:first_name]
  #   actor = Actor.find_by(first_name: actor_name)
  #   render json: {
  #     message: actor
  #   }
  # end
end
