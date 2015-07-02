require 'bundler'
Bundler.require
require './models/model.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/results_fat' do 
    puts params[:firstname]
    erb :results_fat
  end 
  
end