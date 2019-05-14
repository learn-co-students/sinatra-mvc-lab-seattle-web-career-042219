require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'byebug'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinizer = Piglatinizer.new(params[:user_input])
    erb :results
  end

end
