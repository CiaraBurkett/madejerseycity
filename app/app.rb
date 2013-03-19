require "sinatra"
require "sequel"
require "sqlite3"
require "slim"

# connect to an in-memory database
DB = Sequel.connect(ENV['DATABASE_URL'] || 'sqlite://directory.db')

# create an entries table
DB.create_table :entries do
	primary_key :id 
	String :project_name
	String :project_url
	String :project_description
	TrueClass :hiring
end

# create a dataset from the entries table
# entries = DB[:entries]

class Entry < Sequel::Model
		
end

get '/' do
	@entries = Entry.all #:order => :id.desc
	slim :index
end

post '/' do
	entry = Entry.new
	entry.project_name = params[:project_name]
	entry.project_url = params[:project_url]
	entry.project_description = params[:project_description]
	entry.hiring = params[:hiring]
	entry.save
	redirect '/'
end