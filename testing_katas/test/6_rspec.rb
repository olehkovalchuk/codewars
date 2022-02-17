require 'rspec'
require '../6_kata'

RSpec.describe 'def f' do
  subject { f(x) }
  context 'when all argument is correct' do
    let(:x) { 2.6e-08 }
    it 'should return correct result' do
      expect(subject).to eq(1.29999999155e-08)
    end
  end
  context 'when argument is string' do
    let(:x) { 'String' }
    it 'should raise TypeError' do
      expect { subject }.to raise_error(TypeError)
    end
  end
end
