$:.unshift File.expand_path "..", __FILE__

require 'boot'
require 'bundler'
Bundler.require :default, ENV['RACK_ENV']

require "./config/environment.rb"
require "./app"


