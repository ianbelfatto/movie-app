Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/actor", controller: "actors", action: "single_actor"
get "/all_movies", controller: "movies", action: "all_movies"
get "/one_movie", controller: "movies", action: "one_movie"

get "/query_actor", controller: "actors", action: "query_actor"
get "/url_actor/:first_name", controller: "actors", action: "query_actor"

post "/body_actor", controller: "actors", action: "body_actor"
end
