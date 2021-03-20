# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'
require('sinatra')
require('active_record')

require 'bundler/setup'
require 'mysql2'

Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.logger = Logger.new($stdout)

configure :development do
  ActiveRecord::Base.establish_connection(
      adapter: 'mysql2',
      encoding: 'utf8',
      database: 'hoa_migration',
      username: 'root',
      password: 'Palo5non!'
  )
end

require './app/controllers/application_controller'
require_all 'app'
