require 'rest-client'
require 'json'
require 'net/http'

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
      #RestClient.get("http://worldtimeapi.org/api/timezone/America/Toronto")
      # getWeather()
      getTime()

    end

    # def getWeather
    #   current_weather = RestClient.get("api.openweathermap.org/data/2.5/weather?lat={35}&lon={139}&appid={30c339e4cdc2c562cfbb889705e955c1}")
    #   current_weather_json = JSON.parse(current_weather)
    #   "<div> #{current_weather_json['name']['main.temp']}</div>"
    # end

    def getTime()
      
      rest_client_response = RestClient.get("http://worldtimeapi.org/api/timezone/America/Toronto")
      response_body_json = rest_client_response.body
      json_object = JSON.parse(response_body_json)
      json_object
      puts  json_object
      # "<div> #{json_object['timezone']['datetime']}</div>"

      # puts response

      # current_time = URI(url)
      # current_time = URI("http://worldtimeapi.org/api/timezone/America/Toronto")
      # current_time = Net::HTTP.get(current_time)
      # current_time_json = current_time.to_json()
      # puts current_time_json
      # "<div> #{current_time_json}</div>"
    end


    # def Streamer
    #     # SOME CODE
    #     # <div>Interesting content</div>
        
    # end

  end
end
  