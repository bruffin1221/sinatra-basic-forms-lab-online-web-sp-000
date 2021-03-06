require_relative 'config/environment'

class App < Sinatra::Base
   
    get '/' do 
        erb :index
    end

    get '/new' do 
        erb :create_puppy
    end

    post "/puppy" do 
        @puppy=Puppy.new(@name, @breed, @age)
        @puppy.name=params[:name]
        @puppy.age=params[:age]
        @puppy.breed=params[:breed]
        erb :display_puppy
    end

end


