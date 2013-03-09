require "sinatra"
require "sequel"
require "sqlite3"
require "slim"
require "sass"

get '/' do
	slim :index
end

get 'stylesheets/app.css' do
	sass :app
end