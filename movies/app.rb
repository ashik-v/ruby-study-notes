require 'sinatra'
require_relative 'lib/movie'
require_relative 'lib/movie_store'

store = MovieStore.new

get '/' do
  "Hello Chunky!"
end

get '/movies' do
  @movies = store.all
  erb :index
end

get '/movies/new' do
  erb :new
end

post '/movies/create' do
  @movie = Movie.new
  @movie.title = params['title']
  @movie.rating = params['rating']
  store.save(@movie)
  redirect '/movies/new'
end

get '/movies/:id' do
  id = params['id'].to_i
  @movie = store.find(id)
  erb :show
end
