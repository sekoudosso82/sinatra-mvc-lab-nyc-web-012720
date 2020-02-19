require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
      end

    post '/final_pig' do
      
        @name = PigLatinizer.new(params[:name])
        erb :final_pig
      end
end