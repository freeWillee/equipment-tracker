class UsersController < ApplicationController
    get "/user/:username" do
        "Your user login is: #{session[:username]}"
    end

end