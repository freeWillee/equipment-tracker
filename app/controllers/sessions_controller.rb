class SessionsController < ApplicationController

    get '/login' do
        erb :"sessions/login.html"
    end

    post '/sessions' do
        login(params[:username])

        redirect "/users"
    end

    get '/logout' do
        logout!

        redirect '/users'
    end    

end