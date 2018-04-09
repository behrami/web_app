require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  # instructions for what to do when user visits '/home' will go here
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favourites' do
  @fav_links=['twitch.tv', 'youtube.com', 'google.com', 'stackoverflow.com']
  erb :favourites
end
