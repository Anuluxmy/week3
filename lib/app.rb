require 'sinatra'

get '/random-cat' do

  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat'do
p params
@name = params[:name]
erb(:form)
end

get '/form' do
  erb(:form)
end
