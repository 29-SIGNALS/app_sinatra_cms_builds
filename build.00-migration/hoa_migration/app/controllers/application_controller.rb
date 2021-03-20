require './config/environment'

class ApplicationController < Sinatra::Base
  register ActiveRecord
  register Sinatra
  register Mysql2


  configure do
    set :public_folder, 'public'
    set :views, Proc.new{ File.join(root,'../views')}
  end

  get "/" do
    erb :welcome
  end

  get '/search' do
    params
  end

end
