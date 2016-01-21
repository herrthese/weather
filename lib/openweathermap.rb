#!/usr/bin/env ruby

require 'json'
require 'open-uri'

class OpenWeatherMap
  TOKEN   = '2de143494c0b295cca9337e1e96b00e0'
  HAMBURG = "http://api.openweathermap.org/data/2.5/weather?q=Hamburg,de&appid=#{TOKEN}"
  def self.hamburg
    JSON.parse(open(HAMBURG).read)
  end
  def self.city(name, country)
    city = "http://api.openweathermap.org/data/2.5/weather?q=#{name},#{country}&appid=#{TOKEN}"
    JSON.parse(open(city).read)
  end
end
