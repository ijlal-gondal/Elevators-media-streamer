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

end

end