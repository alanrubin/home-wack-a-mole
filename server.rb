require 'sinatra'
require 'sinatra/multi_route'
require 'json'

set :protection, :except => [:json_csrf]

get '/server/signin' do
  sleep 1
  headers "Content-Type"   => "application/json;charset=utf-8"
  File.read("app/data/user.json")
end
