require "sinatra"
require "sequel"
require "sqlite3"
require "slim"

# # connect to an in-memory database
# DB = Sequel.sqlite

# # create a listings table
# DB.create_table :listings do
# 	primary_key :id 
# 	String :name
# 	String :url
# 	String :description
# 	TrueClass :hiring
# end

# # create a dataset from the listings table
# listings = DB[:listings]

get '/' do
	slim :index
end