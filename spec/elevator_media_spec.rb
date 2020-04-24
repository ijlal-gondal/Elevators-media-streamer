require 'elevator_media/streamer'
require 'webmock' 
                                                                                                 
                                                                                                                    
describe "Streamer" do
let(:streamer) { ElevatorMedia::Streamer.new }                                                                             
   context "this a test" do                                                            
     it "prints" do                                                                                              
     expect(streamer.test).to eq("Hello World!")    
                                                                        
     end                                                                                                             
   end   
   
   context "streamer basics" do
        it "should respond to getContentTest method" do
            expect(streamer).to respond_to(:getContentTest)       
        end
   end

   context "streamer is fetching content" do
    it "should respond to getContent method" do
        expect(streamer).to respond_to(:getContent)       
    end
  end
  
  context "testing the getContent method" do
    it "should call getTime method" do
      expect(streamer).to receive(:getTime)
      streamer.getContent()
    end
  end

  context "testing the getTime method" do

    MOCKED_RESPONSE_TIME = {
      "week_number": 17,
      "utc_offset": "-04:00",
      "utc_datetime": "2020-04-22T13:25:29.778314+00:00",
      "unixtime": 1587561929,
      "timezone": "America/Toronto",
      "raw_offset": -18000,
      "dst_until": "2020-11-01T06:00:00+00:00",
      "dst_offset": 3600,
      "dst_from": "2020-03-08T07:00:00+00:00",
      "dst": true,
      "day_of_year": 113,
      "day_of_week": 3,
      "datetime": "2020-04-22T09:25:29.778314-04:00",
      "client_ip": "70.51.173.230",
      "abbreviation": "EDT"
  }

    # it "should use RestClient to get content from the internet" do
    #   expect(RestClient).to receive(:get)
    #   streamer.getContent()
    # end

    it "RestClient should be called with the time service url" do
      fake_rest_client_response = double('fake_rest_client_response')
      expect(RestClient).to receive(:get).with("http://worldtimeapi.org/api/ip") {fake_rest_client_response}
      allow(fake_rest_client_response).to receive(:body) {"{}"}
      streamer.getTime()
    end

    it "We should handle service response correctly" do
      fake_rest_client_response = double('fake_rest_client_response')
      json_body = double('json_body')
      expect(RestClient).to receive(:get).with("http://worldtimeapi.org/api/ip").and_return(fake_rest_client_response)
      expect(fake_rest_client_response).to receive(:body).and_return(json_body)
      expect(JSON).to receive(:parse).and_return(MOCKED_RESPONSE_TIME)
      streamer.getTime()
    end

  end

  context "testing the getWeather method" do

    MOCKED_RESPONSE_WEATHER = {
      "coord": { "lon": 139,"lat": 35},
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 281.52,
        "feels_like": 278.99,
        "temp_min": 280.15,
        "temp_max": 283.71,
        "pressure": 1016,
        "humidity": 93
      },
      "wind": {
        "speed": 0.47,
        "deg": 107.538
      },
      "clouds": {
        "all": 2
      },
      "dt": 1560350192,
      "sys": {
        "type": 3,
        "id": 2019346,
        "message": 0.0065,
        "country": "JP",
        "sunrise": 1560281377,
        "sunset": 1560333478
      },
      "timezone": 32400,
      "id": 1851632,
      "name": "Shuzenji",
      "cod": 200
    
  }



    it "RestClient should be called with the weather service url" do
      fake_rest_client_response = double('fake_rest_client_response')
      expect(RestClient).to receive(:get).with("https://api.openweathermap.org/data/2.5/weather?lat=46&lon=-71&appid=30c339e4cdc2c562cfbb889705e955c1&units=metric") {fake_rest_client_response}
      allow(fake_rest_client_response).to receive(:body) {"{}"}
      streamer.getWeather()
    end

    it "The actual response body" do
      fake_rest_client_response = double('fake_rest_client_response')
      json_body = double('json_body')
      expect(RestClient).to receive(:get).with("https://api.openweathermap.org/data/2.5/weather?lat=46&lon=-71&appid=30c339e4cdc2c562cfbb889705e955c1&units=metric").and_return(fake_rest_client_response)
      expect(fake_rest_client_response).to receive(:body).and_return(json_body)
      expect(JSON).to receive(:parse).and_return(MOCKED_RESPONSE_WEATHER)
      streamer.getWeather()
    end

  end

  # test "returns fake data" do
    # stub_request(:get, "http://worldtimeapi.org/api/timezone/America/Toronto").
    #   to_return(status: 2000, body: '{}', headers: {} )

  # context "get weather info for current location" do
  #   it "should fetch weather info using getContent method" do
  #       expect(RestClient).to receive(:get).with("api.openweathermap.org/data/2.5/weather?lat={35}&lon={139}&appid={30c339e4cdc2c562cfbb889705e955c1") {'{weatehrinfo}'}
  #       streamer.getWeather
  #   end
  # end

  # context "get time info for current location" do
  #   it "should fetch time info using getTime method" do


        # response = RestClient.get("http://worldtimeapi.org/api/timezone/America/Toronto")
        # expect(response.code).to eq 200  

        # expect(RestClient).to receive(:get).with("http://worldtimeapi.org/api/timezone/America/Toronto") 
        # streamer.getTime
  #   end
  # end
   
 end
    