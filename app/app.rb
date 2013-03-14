require "sinatra"
require "sequel"
require "sqlite3"
require "slim"

get '/' do
	slim :index
end

DB = Sequel.sqlite

DB.create_table :listings do
	primary_key :id 
	String :name
	String :url
	String :description
	TrueClass :hiring
end