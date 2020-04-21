require 'elevator_media/streamer'                                                                                                   
                                                                                                                    
describe "Streamer" do
let(:streamer) { ElevatorMedia::Streamer.new }                                                                             
   context "this a test" do                                                            
     it "prints" do                                                                                              
     expect(streamer.test).to eq("Hello World!")    
                                                                        
     end                                                                                                             
   end   
   
   context "streamer basics" do
        it "should respond to getContent method" do
            expect(streamer).to respond_to(:getContent)       
        end
   end
   
 end
     #    20.times { streamer.hit(4) }  