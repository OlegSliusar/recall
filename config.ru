require 'bundler'
Bundler.require
require './recall'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/recall.db")

run Sinatra::Application
