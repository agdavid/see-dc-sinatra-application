class UsersController < ApplicationController

  get '/sights' do #show all sights
    if logged_in
      @sights = Sight.all
      erb :"sights/index", :layout => :"layout/internal"
    else
      redirect "/"
    end
  end

  get '/sights/new' do #render new sight form
    if logged_in
      erb :"sights/new", :layout => :"layout/internal"
    else
      redirect "/"
    end
  end

  post '/sights' do #process new sight form
    @sight = Sight.create(params[:sight])
    @reviews = @sight.reviews
    erb :"sights/show", :layout => :"layout/internal", locals: {message: "Sight successfully created!"}
  end

  get '/sights/:id' do
    @sight = Sight.find_by_id(params[:id])
    @reviews = @sight.reviews
    erb :"/sights/show", :layout => :"layout/internal"
  end

end