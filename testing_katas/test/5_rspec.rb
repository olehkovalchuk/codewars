require 'rspec'
require '../5_kata'

RSpec.describe PaginationHelper do
  subject { described_class.new(collection, items_per_page) }
  let(:collection) { %w[a b c d e f g h i] }
  let(:items_per_page) { 3 }
  describe '#page_count' do
    it 'should return correct result' do
      expect(subject.page_count).to eq(3)
    end
  end
  describe '#item_count' do
    it 'should return correct result' do
      expect(subject.item_count).to eq(9)
    end
  end
  describe '#page_index' do
    context 'when item_index greather than collection.length' do
      let(:item_index) { 10 }
      it 'should return -1' do
        expect(subject.page_index(item_index)).to eq(-1)
      end
    end
    context 'when item_index is in range of collection' do
      let(:item_index) { 5 }
      it 'should return correct result' do
        expect(subject.page_index(item_index)).to eq(1)
      end
    end
  end
  describe '#page_item_count' do
    context 'when page_index is in range of collection' do
      let(:page_index) { 2 }
      it 'should return correct result' do
        expect(subject.page_item_count(page_index)).to eq(3)
      end
    end
    context 'when page_index greather than collection.length' do
      let(:page_index) { 10 }
      it 'should return -1' do
        expect(subject.page_item_count(page_index)).to eq(-1)
      end
    end
  end
end
