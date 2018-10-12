class ApplicationController < Sinatra::Base
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "mypassword"
    end

    get '/' do

    end

    helpers do
        def logged_in?
            !!session[:username]
        end
    end
end