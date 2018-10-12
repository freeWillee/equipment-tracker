class SessionsController < ApplicationController

    get '/login' do
        erb :"sessions/login.html"
    end

    post '/sessions' do
        login(params[:username], params[:password])

        redirect "/stats"
    end

    get '/logout' do
        logout!

        redirect '/stats'
    end    

end