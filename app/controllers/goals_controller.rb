class GoalsController < ApplicationController
    get '/goals/new' do
        #Check that user is logged in
        if !session[:username]
            redirect '/login'
        else
            "Render a new goals form"
        end
    end
end