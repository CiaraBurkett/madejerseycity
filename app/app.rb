require "sinatra"
require "sequel"
require "sqlite3"
require "slim"

get '/' do
	slim :index
end

# connect to an in-memory database
DB = Sequel.sqlite

# create a listings table
DB.create_table :listings do
	primary_key :id 
	String :name
	String :url
	String :description
	TrueClass :hiring
end

class App 

	post '/' do
		@name = params[:project_name]
		@url = params[:project_url]
		@description = params[:description]
		@hiring = params[:hiring]
	end

end
