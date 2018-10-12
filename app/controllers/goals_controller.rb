class GoalsController < ApplicationController
    get '/goals/new' do
        #Check that user is logged in
        if !logged_in?
            redirect '/login'
        else
            "Render a new goals form"
        end
    end

    get '/goals/edit' do
       #Check that user is logged in
        if !logged_in?
            redirect '/login'
        else
            "Render an edit goals form"
        end
    end
end