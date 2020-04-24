require 'rest-client'
require 'json'


module ElevatorMedia
    class Streamer
      # attr_reader :test
      puts "hello" # For testing with the console
    #   ElevatorMedia::Streamer.getContent()
    # def initialize
    #   @test = 0
    # end
    def test
      "Hello World!"
    end

    def getContentTest
      return "<div>content</test>"

    end

    def getContent
      getWeather()
      getTime()

    end

    def getWeather()
    current_weather = RestClient.get("https://api.openweathermap.org/data/2.5/weather?lat=46&lon=-71&appid=30c339e4cdc2c562cfbb889705e955c1&units=metric")
    current_weather_body = current_weather.body
    current_weather_json = JSON.parse(current_weather_body)
    weather = "Current weather at your location is with temperature #{current_weather_json} "
    # puts current_weather_json
     #{current_weather_json['weather']}

    # #   "<div> #{current_weather_json['name']['main.temp']}</div>"
    end

    def getTime()
      rest_client_response = RestClient.get("http://worldtimeapi.org/api/ip")
      response_body_json = rest_client_response.body
      json_object = JSON.parse(response_body_json)
      # puts json_object
      js = "Current date and time at your time zone: #{json_object['timezone']} is #{json_object['datetime']}"
      # puts "test"
      # puts js
      #js
      # return json_object
      # "<div> #{json_object['timezone']['datetime']}</div>"

 
    end


  end
end
  