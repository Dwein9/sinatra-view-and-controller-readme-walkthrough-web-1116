require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    puts params
    erb :reverse
  end

  post '/reverse' do
    @word = params["string"].reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]

    erb :friends
  end
end
