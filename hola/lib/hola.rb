require 'faraday'


class Hola
    def self.puter
      url = 'https://api.openweathermap.org/data/2.5/weather?q=Saint%20Petersburg&units=metric&appid=dabfae8310cf1dd041d5647acecd48f6'
      response = Faraday.get(url)
      
      puts "Saint-Petersburg temperature in celcium degrees"
      index = response.body.index("temp")
      puts parsed_res = response.body[index+6..index+10].split(",")
    end
  end