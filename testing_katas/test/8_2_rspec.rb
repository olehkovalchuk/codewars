require "rspec"
require_relative "../8_2.rb"

RSpec.describe "def litres" do
    subject { litres(time) } 
    context "when argument is correct" do
        let(:time) { 10 } 
        it "should return correct value" do
            expect(subject).to eq(5) 
        end
    end 
    context "when argument is uncorrect - string" do
        let(:time) { "string" }
        it "should raise NoMethodError" do
            expect{subject}.to raise_error(NoMethodError)
        end
    end 
end