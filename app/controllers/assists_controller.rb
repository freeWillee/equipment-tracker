class AssistsController < ApplicationController
    get '/assists/new' do
        #Check that user is logged in
        if !logged_in?
            redirect '/login'
        else
            "Render a new assists form"
        end
    end

    get '/assists/edit' do
       #Check that user is logged in
        if !logged_in?
            redirect '/login'
        else
            "Render an edit assists form"
        end
    end
end