require 'sinatra'
require_relative 'poker.rb'

enable :sessions

get '/' do
	erb :index
	
end

get '/index' do
		erb :index
end

