Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# get "/actor", controller: "actors", action: "single_actor"
# get "/all_movies", controller: "movies", action: "all_movies"
# get "/one_movie", controller: "movies", action: "one_movie"

# get "/query_actor", controller: "actors", action: "query_actor"
# get "/url_actor/:first_name", controller: "actors", action: "query_actor"

# post "/body_actor", controller: "actors", action: "body_actor"
  get "/actors" => "actors#index"
  get "/movies" => "movies#index"

  post "/actors" => "actors#create"
  post "/movies" => "movies#create"

  get "/actors/:id" => "actors#show"
  get "/movies/:id" => "movies#show"

  patch "/actors/:id" => "actors#update"
  patch "/movies/:id" => "movies#update"

  delete "/actors/:id" => "actors#destroy"
  delete "/movies/:id" => "movies#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
