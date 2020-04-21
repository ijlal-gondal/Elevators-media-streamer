require 'elevator_media/streamer' 
                                                                                                 
                                                                                                                    
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


  # context "get weather info for current location" do
  #   it "should fetch weather info using getContent method" do
  #       expect(RestClient).to receive(:get).with("api.openweathermap.org/data/2.5/weather?lat={35}&lon={139}&appid={30c339e4cdc2c562cfbb889705e955c1") {'{weatehrinfo}'}
  #       streamer.getWeather
  #   end
  # end

  context "get time info for current location" do
    it "should fetch time info using getTime method" do
        expect(RestClient).to receive(:get).with("http://worldtimeapi.org/api/timezone/America/Toronto") 
        streamer.getTime
    end
  end
   
 end
     #    20.times { streamer.hit(4) }  