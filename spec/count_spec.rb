require 'rspec'
require './count_8_kata'

RSpec.describe 'def count_positives_sum_negatives' do
  subject { count_positives_sum_negatives(test_arr) }
  context 'when arg is empty' do
    let(:test_arr) { [] }
    it 'returns an empty array' do
      expect(subject).to eq([])
    end
  end

  context 'when arg is nil' do
    let(:test_arr) { nil }
    it 'returns an empty array' do
      expect(subject).to eq([])
    end
  end

  context 'when arg of integers' do
    let(:test_arr) { [1, 2, 5, 10, -1, -5, -7] }
    it 'counts positive and calculates sum of negatives' do
      expect(subject).to eq([4, -13])
    end
  end
end
