$:.unshift File.expand_path("../", __FILE__)
require 'rubygems'
require 'sinatra'
require './server'
run Sinatra::Application
