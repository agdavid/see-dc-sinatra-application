class UsersController < ApplicationController

  get '/sights' do
    if logged_in
      @sights = Sight.all
      erb :"sights/index"
    else
      redirect "/"
    end
  end

  get '/sights/new' do
    if logged_in
      erb :"sights/new"
    else
      redirect "/"
    end
  end

  post '/sights' do 
    @sight = Sight.create(params[:sight])
    @reviews = @sight.reviews
    erb :"sights/show", locals: {message: "Sight successfully created!"}
  end

  get '/sights/:id' do
    @sight = Sight.find_by_id(params[:id])
    @reviews = @sight.reviews
    erb :"/sights/show"
  end

end