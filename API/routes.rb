require 'sinatra'
require './Config/db.rb'
require 'json/ext' # required for .to_json
require 'sinatra/param'
require './UseCases/traces.rb'


get '/' do
    'Welcome to Traces API!'
end