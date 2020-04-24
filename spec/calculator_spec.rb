require 'calculator'

describe Calculator do
    let(:calculator) {Calculator.new}
    context "developing a calcualtor" do

    it "adds numnbers " do
        expect(calculator.add(2,2)).to eq(4)
    end

    it "multiplies numbers" do
        expect(calculator.multiply(2,2)).to eq(4)
    end

    it "divides numbers" do
        expect(calculator.divide(4,2)).to eq(2)
    end

    it "subtracts numbers" do
        expect(calculator.subtract(4,2)).to eq(2)
        end



end

end