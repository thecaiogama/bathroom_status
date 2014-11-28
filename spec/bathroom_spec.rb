#!/usr/bin/env ruby

require './models/bathroom'
require 'date'

describe Bathroom, "#initialize" do
  context "should create valid bathroon" do

    let (:bathroom) { Bathroom.new("HALL", "DESTRUIDO") }

    it { expect(bathroom.status).to eq "DESTRUIDO" }
    it { expect(bathroom.name).to eq "HALL" }
    it { expect(bathroom.date).to eq DateTime.now.to_s}

    it { expect(bathroom.as_json).to eq '{"name":"HALL","status":"DESTRUIDO","date":"' << DateTime.now.to_s << '"}' }
  end

end
