class UsersController < ApplicationController

  ######## SIGNUP ########
  get '/signup' do
    if logged_in
      redirect '/'
    else
      erb :"/users/signup"
    end
  end

  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == "" 
      erb :"users/signup", locals: {message: "Please fill in all fields."} 
    else
      @user = User.create(username: params[:username], email: params[:email], password: params[:password])
      session[:user_id] = @user.id
      redirect '/'
    end
  end

######## LOGIN/LOGOUT ########
  get '/login' do
    if logged_in
      redirect '/'
    else
      erb :"/users/login"
    end
  end

  post '/login' do
    if params[:username] == "" || params[:password] == ""
      erb :"/users/login", locals: {message: "Missing information! Please fill in all fields."}
    else
      @user = User.find_by(:username => params["username"])
      if @user && @user.authenticate(params["password"])
        session[:user_id] = @user.id
        redirect "/"
      else
        erb :"users/login", locals: {message: "Invalid username or password! Please try again."}
      end
    end
  end

  get '/logout' do
    if logged_in
      session.clear
      redirect "/"
    else
      redirect "/"
    end
  end

end