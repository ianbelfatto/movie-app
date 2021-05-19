class ActorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :known_for, :created_at, :updated_at, :gender, :age, :movie_id, :movie
end
