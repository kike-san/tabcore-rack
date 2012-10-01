require 'bundler'
Bundler.require

DB = Sequel.connect(ENV['DATABASE_URL'] || "postgres://localhost:5432/coredata")

run Rack::CoreData('./Example.xcdatamodeld')

