require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        input = params[:user_phrase]
        output = PigLatinizer.new()
        @translated = output.piglatinize(input)
        erb :user_input
    end
end