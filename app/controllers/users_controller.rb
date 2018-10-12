class UsersController < ApplicationController
    get "/user" do
        "Your user login is: #{session[:email]}"
    end

end