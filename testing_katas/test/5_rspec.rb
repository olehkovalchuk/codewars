require "rspec"
require "../5_kata.rb"

RSpec.describe PaginationHelper do
    subject { described_class.new(collection, items_per_page) } 
    let(:collection) { ['a','b','c','d','e','f','g','h','i'] }  
    let(:items_per_page) { 3 }  
    context "calls page_count method with correct arguments" do
        it "should return correct result" do
            expect(subject.page_count).to eq(3) 
        end
    end
    context "calls item_count method with correct arguments" do
        it "should return correct result" do
            expect(subject.item_count).to eq(9) 
        end
    end
    context "calls page_index method with item_index greather than collection.length" do 
        let(:item_index) { 10 }  
        it "should return -1" do
            expect(subject.page_index(item_index)).to eq(-1)
        end
    end 
    context "calls page_index method with argument 5" do 
        let(:item_index) { 5 }  
        it "should return correct result" do
            expect(subject.page_index(item_index)).to eq(1)
        end
    end 
    context "calls page_item_count method with item_index argument" do
        let(:item_index) { 3 }
        let(:page_index) { 2 }  
        it "should return correct result" do
            expect(subject.page_item_count(page_index)).to eq(3)
        end
    end 
    context "calls page_item_count method with with page_index greather than collection.length" do
        let(:item_index) { 3 }
        let(:page_index) { 10 }  
        it "should return -1" do
            expect(subject.page_item_count(page_index)).to eq(-1)
        end
    end 
end