require_relative 'config/environment'

class App < Sinatra::Base


    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        puppy = Puppy.new(params[:name], params[:breed], params[:age])
        @name = puppy.name
        @breed = puppy.breed
        @months_old = puppy.months_old
        erb :display_puppy
    end
end
