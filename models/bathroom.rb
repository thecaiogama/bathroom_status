#!/usr/bin/env ruby
require 'json'
require 'date'

class Bathroom
  attr_accessor :name, :status, :date
  NAMES  = ['HALL', 'SALA']
  STATUS = ['LIVRE', 'OCUPADO', 'DESTRUIDO']

  def initialize(name, status)
      @name   = name
      @status = status
      @date   = DateTime.now.to_s
  end

  def as_json
    { :name => @name, :status => @status, :date => @date }.to_json
  end

  private
    def valid_name?(name)
      return true if NAMES.include? name

      return false
    end

    def valid_status?(status)
      return true if STATUS.include? status

      return false
    end

end
