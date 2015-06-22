require 'sinatra'
require 'json'

set :protection, :except => [:json_csrf]

get '/' do
  "hello world"
end

get '/server/signin' do
  sleep 1
  headers "Content-Type"   => "application/json;charset=utf-8"
  File.read("app/data/user.json")
end
