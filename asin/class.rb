require 'sinatra'
require "haml"

get '/' do
    @title = "Home Page"
    haml :index
end

get '/about' do
    @title = "About Us"
    haml :about
end

get '/contact' do
    @title = "Contact Us"
    haml :contact
end

get '/reverse/:string/:num' do |string, num = 2|
  "#{string} #{num}"
end

get '/hello/:name' do
  "Hello #{params['name']}!"
end