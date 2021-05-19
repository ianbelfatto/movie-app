class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :created_at, :updated_at, :director, :english, :actors
end
