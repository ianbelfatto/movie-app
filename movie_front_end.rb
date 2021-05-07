require "http"

system "clear"
puts "Welcome to the Movie App!"
puts ""
puts "Below you can see all of the available movies: "
puts ""

all_movies = HTTP.get("http://localhost:3000/all_movies")
pp all_movies.parse