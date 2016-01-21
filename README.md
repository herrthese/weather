OpenWeatherMap
==============


Copyright &copy; 2015-2016, Markus These

Client libraries for communicating with <tt>openopenweathermapmap.org</tt>.


OVERVIEW:
---------
This project is a simple API client for interacting with the <tt>openopenweathermapmap.org</tt>.


DETAILS:
--------
This projects currently only provides functionality to get the OpenWeatherMapdate by a given city.

USAGE:
------

### Installation

Install openweathermap by <tt>sudo gem install openweathermap</tt>
Include this gem in your code as a require statement.

    require 'openweathermap'

### Usage

The following example passes the <tt>update-center.json</tt> file contents from <tt>jenkins-ci.org</tt>.
And returns all informations from the latest available jenkins-version.

```ruby
#input: city, country
#return: openweathermapinformations as JSON
@openweathermap_hamburg = OpenWeatherMap.city('hamburg','de')

puts @openweathermap_hamburg
```

### Return
Example:

```ruby
{"coord"=>{"lon"=>10, "lat"=>53.55}, "openweathermap"=>[{"id"=>701, "main"=>"Mist", "description"=>"mist", "icon"=>"50d"}], "base"=>"cmc stations", "main"=>{"temp"=>267.7, "pressure"=>1027, "humidity"=>100, "temp_min"=>267.15, "temp_max"=>268.15}, "wind"=>{"speed"=>1}, "clouds"=>{"all"=>90}, "dt"=>1453366159, "sys"=>{"type"=>1, "id"=>4883, "message"=>0.0032, "country"=>"DE", "sunrise"=>1453360917, "sunset"=>1453390865}, "id"=>2911298, "name"=>"Hamburg", "cod"=>200}
```
