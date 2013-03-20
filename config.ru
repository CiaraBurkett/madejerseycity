require 'rubygems'
require 'bundler'
require 'sinatra'

Bundler.require

require './app/app'
run Sinatra::Application
