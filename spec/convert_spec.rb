require 'rspec'
require './convert_8_kata'

RSpec.describe 'def string_to_number' do
  subject { string_to_number(str) }
  context 'when an argument starts with a number' do
    let(:str) { '12adf' }
    it 'converts string to a number' do
      expect(subject).to eq(12)
    end
  end
  context 'when an argument does not start with a number or an arg is nil' do
    let(:str) { 'adf' }
    it 'converts string to a number' do
      expect(subject).to eq(0)
    end
  end
end
