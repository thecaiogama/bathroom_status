#!/usr/bin/env ruby
require 'sinatra'
require './models/bathroom'

get '/status/:bathroom' do
  { status => 'LIVRE' }
end

put '/status/' do
  bathroom = Bathroom.new(params[:name], params[:status])

  bathroom.as_json
end
