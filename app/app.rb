require "sinatra"
require "sequel"
require "sqlite3"
require "slim"

get '/' do
	slim :index
end

# connect to an in-memory database
DB = Sequel.sqlite

create a listings table
DB.create_table :listings do
	primary_key :id 
	String :name
	String :url
	String :description
	TrueClass :hiring
end

# create a dataset from the listings table
listings = DB[:listings]

# populate the table
listings.insert(:name => "#{name}", :url => "#{url}", :description => "#{description}", :hiring => "#{hiring}")

# post '/' do
# 	name = params[:project_name]
# 	url = params[:project_url]
# 	description = params[:description]
# 	hiring = params[:hiring]
# end

class Listing
	def initialize(name, url, description, hiring)
		@name = name
		@url = url
		@description = description
		@hiring = hiring
	end

	post '/' do
		name = params[:project_name]
		url = params[:project_url]
		description = params[:description]
		hiring = params[:hiring]
	end
	
end

