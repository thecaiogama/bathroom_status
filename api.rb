#!/usr/bin/env ruby
require 'sinatra'
require './models/bathroom'
require 'json'
require 'parse-ruby-client'
require './models/DBParse'


get '/status/:bathroom' do
    dbparse = DBParse.new
    bathroom_p = dbparse.get params[:bathroom]

	puts bathroom_p

    bathroom_result = Bathroom.new(bathroom_p["name"], bathroom_p["status"], bathroom_p["updatedAt"].to_s)
	bathroom_result.as_json
end

put '/status/' do
  	bathroom = Bathroom.new(params[:name], params[:status])

	dbparse = DBParse.new
	bathroom_p = dbparse.update bathroom.name, bathroom.status
	
	bathroom_result = Bathroom.new bathroom_p["name"], bathroom_p["status"]
	bathroom_result.as_json
end