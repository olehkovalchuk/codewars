require 'rspec'
require_relative '../7_kata'

RSpec.describe 'def sequence_sum' do
  subject { sequence_sum(begin_number, end_number, step) }
  context 'when all argument is correct' do
    let(:begin_number) { 1 }
    let(:end_number) { 5 }
    let(:step) { 3 }
    it 'should return correct result' do
      expect(subject).to eq(5)
    end
  end
  context 'when begin_number is greater than end_number' do
    let(:begin_number) { 15 }
    let(:end_number) { 7 }
    let(:step) { 4 }
    it 'should return zero' do
      expect(subject).to eq(0)
    end
  end
  context 'when one of arguments is string' do
    let(:begin_number) { 'string' }
    let(:end_number) { 25 }
    let(:step) { 2 }
    it 'should raise ArgumentError' do
      expect { subject }.to raise_error(ArgumentError)
    end
  end
end
