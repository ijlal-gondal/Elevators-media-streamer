require 'rest-client'

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
      # getWeather()
      getTime()

    end

    # def getWeather
    #   current_weather = RestClient.get("api.openweathermap.org/data/2.5/weather?lat={35}&lon={139}&appid={30c339e4cdc2c562cfbb889705e955c1}")
    #   current_weather_json = JSON.parse(current_weather)
    #   "<div> #{current_weather_json['name']['main.temp']}</div>"
    # end

    def getTime
      current_time = RestClient.get("http://worldtimeapi.org/api/timezone/America/Toronto")
      current_time_json = JSON.parse(current_time)
      "<div> #{current_time_json['timezone']['datetime']}</div>"
    end


    # def Streamer
    #     # SOME CODE
    #     # <div>Interesting content</div>
        
    # end

  end
end
  