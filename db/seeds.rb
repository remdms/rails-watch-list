require 'open-uri'
require 'json'

puts "clearing DB..."
List.destroy_all
Movie.destroy_all
Bookmark.destroy_all

puts "retrieving movies..."

URL = 'https://tmdb.lewagon.com/movie/top_rated'
size = 'w342'

movies = JSON.parse(URI.open(URL).read)["results"]
movies.each do |movie|
  attributes = {
    title: movie["title"],
    overview: movie["overview"],
    poster_url: "https://image.tmdb.org/t/p/#{size}#{movie["poster_path"]}",
    rating: movie["vote_average"]
  }
  Movie.create(attributes)
end
puts "Done!"
