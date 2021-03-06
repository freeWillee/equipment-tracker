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

        def login(username, password)
            #check to see if user with username exist.  If found set session, if not redirect to login
            user = User.find_by(:username=>username)
            
            if user && user.authenticate(password)
                session[:username] = user.username
            else
                redirect '/login'
            end
        end

        def logout!
            session.clear
        end
    end
end