require 'string_calculator'

describe StringCalculator do 
    describe ".add" do
        context "test for an empty string" do
            it  "returns zero" do 
                expect(StringCalculator.add("")).to eq(size: 0, value: nil)
            end
        end
        context "test for a string" do
            it  "returns 3" do 
                expect(StringCalculator.add("234")).to eq(size: 3, value: '234')
            end
        end
        context "test for a string with stripped chars" do
            it  "returns 2" do 
                expect(StringCalculator.add("2A4")).to eq(size: 2, value: '24')
            end
        end
    end
end 