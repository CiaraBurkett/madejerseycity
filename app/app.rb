require "sinatra"
require "sequel"
require "sqlite3"
require "slim"

get '/' do
	slim :index
end