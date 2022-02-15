require "rspec"
require_relative "../8_1.rb"

RSpec.describe "def starting_mark" do
    subject { starting_mark(height) } 
    context "when argument is in the right range " do
        let(:height) { 1.52 } 
        it "should return correct value" do
            expect(subject).to eq(9.45) 
        end
    end 
    context "call method with nil" do
        let(:height) {nil}
        it "should raise TypeError" do
            expect{subject}.to raise_error(TypeError)
        end
    end 
end
