require 'rspec'
require './slamming_lockers_7_kata'

RSpec.describe 'locker_run' do
  subject { locker_run(lockers) }
  context 'when the argument is a number' do
    let(:lockers) { 12 }
    it 'returns an array according to the conditions' do
      expect(subject).to eq([1, 4, 9])
    end
  end
  context 'when the argument is not a number or it is nil' do
    let(:lockers) { '' }
    it 'returns an error' do
      expect { subject }.to raise_error(ArgumentError)
    end
  end
end
