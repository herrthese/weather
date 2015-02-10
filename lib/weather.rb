#!/usr/bin/env ruby

require 'json'
require 'open-uri'

class Weather
  HAMBURG = 'http://api.openweathermap.org/data/2.5/weather?q=Hamburg,de'
  def self.hamburg
    puts JSON.parse(open(HAMBURG).read)
  end
end