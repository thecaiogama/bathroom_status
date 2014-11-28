#!/usr/bin/env ruby
require 'sinatra'
require './models/bathroom'
require 'json'
require 'parse-ruby-client'

get '/status/:bathroom' do
	Parse.init :application_id => "kRBzulQgel9HP1SzlLAKQAbFCxLsFbJBmk878gB8",
           	   :api_key        => "enxZzrPJjZ2V9p6KH83fA7AxsIN8PzpeeiswxG3H",
               :quiet          => true

    bathroom_p_query = Parse::Query.new("bathroom")
	bathroom_p_query.eq("name", params[:bathroom])
	bathroom_p = bathroom_p_query.get
	puts bathroom_p

	#bathroom = Bathroom.new()

	bathroom_p.to_json

 #{ :status => 'LIVRE' }.to_json
 #consumir a base
end

put '/status/' do
  bathroom = Bathroom.new(params[:name], params[:status])

#base

  bathroom.as_json
end
