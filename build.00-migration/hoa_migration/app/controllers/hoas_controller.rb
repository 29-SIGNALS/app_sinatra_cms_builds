class HoasController < ApplicationController

  # GET: /hoas
  get "/hoas" do
    @hoas = Hoa.all
    erb :"/hoas/index.html"
  end

  # GET: /hoas/new
  get "/hoas/new" do
    erb :"/hoas/new.html"
  end

  # POST: /hoas
  post "/hoas" do
    redirect "/hoas"
  end

  # GET: /hoas/5
  get "/hoas/:id" do
    erb :"/hoas/show.html"
  end

  # GET: /hoas/5/edit
  get "/hoas/:id/edit" do
    erb :"/hoas/edit.html"
  end

  # PATCH: /hoas/5
  patch "/hoas/:id" do
    redirect "/hoas/:id"
  end

  # DELETE: /hoas/5/delete
  delete "/hoas/:id/delete" do
    redirect "/hoas"
  end

end
