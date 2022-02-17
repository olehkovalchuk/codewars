require 'rspec'
require './gap_in_primes_5_kata'

RSpec.describe 'def gap' do
  shared_examples 'return nil' do
    it 'returns nil' do
      expect(subject).to eq(nil)
    end
  end

  subject { gap(g, m, n) }
  context 'when n<=m' do
    let(:g) { 8 }
    let(:m) { 410 }
    let(:n) { 400 }
    include_examples 'return nil'
  end

  context 'when g<2' do
    let(:g) { 1 }
    let(:m) { 300 }
    let(:n) { 1000 }
    include_examples 'return nil'
  end

  context 'when the m<2' do
    let(:g) { 10 }
    let(:m) { 1 }
    let(:n) { 1000 }
    include_examples 'return nil'
  end

  context 'when the n>1100000' do
    let(:g) { 110_000_01 }
    let(:m) { 300 }
    let(:n) { 1000 }
    include_examples 'return nil'
  end

  context 'when the method returns one prime number' do
    let(:g) { 6 }
    let(:m) { 100 }
    let(:n) { 120 }
    include_examples 'return nil'
  end

  context 'when the method returns the first pair of two prime numbers' do
    let(:g) { 6 }
    let(:m) { 100 }
    let(:n) { 140 }
    it 'returns nil' do
      expect(subject).to eq([131, 137])
    end
  end
end
