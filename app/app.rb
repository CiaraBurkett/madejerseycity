require "sinatra"
require "sequel"
require "sqlite3"
require "slim"

# connect to an in-memory database
DB = Sequel.sqlite

# create an entries table
DB.create_table :entries do
	primary_key :id 
	String :project_name
	String :project_url
	String :project_description
	TrueClass :hiring
end

# create a dataset from the entries table
entries = DB[:entries]

get '/' do
	slim :index
end