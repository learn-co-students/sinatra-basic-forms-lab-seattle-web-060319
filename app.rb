require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        new_pup = Puppy.new(params[:name], params[:breed], params[:age].to_i)

        @name = new_pup.name
        @age = new_pup.months_old
        @breed = new_pup.breed

        erb :display_puppy
    end

end
