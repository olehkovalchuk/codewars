require 'rspec'
require './rainfall_6_kata'

RSpec.describe 'def value_of_month' do
  subject { value_of_month(town, strng) }
  let(:town) { 'London' }
  let(:strng) do
    <<~TEXT
      Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9
      London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9
      Paris:Jan 182.3,Feb 120.6,Mar 158.1,Apr 204.9,May 323.1,Jun 300.5,Jul 236.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7
      NY:Jan 108.7,Feb 101.8,Mar 131.9,Apr 93.5,May 98.8,Jun 93.6,Jul 102.2,Aug 131.8,Sep 92.0,Oct 82.3,Nov 107.8,Dec 94.2
      Vancouver:Jan 145.7,Feb 121.4,Mar 102.3,Apr 69.2,May 55.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 59.6,Oct 116.3,Nov 154.6,Dec 171.5
      Sydney:Jan 103.4,Feb 111.0,Mar 131.3,Apr 129.7,May 123.0,Jun 129.2,Jul 102.8,Aug 80.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2
      Bangkok:Jan 10.6,Feb 28.2,Mar 30.7,Apr 71.8,May 189.4,Jun 151.7,Jul 158.2,Aug 187.0,Sep 319.9,Oct 230.8,Nov 57.3,Dec 9.4
      Tokyo:Jan 49.9,Feb 71.5,Mar 106.4,Apr 129.2,May 144.0,Jun 176.0,Jul 135.6,Aug 148.5,Sep 216.4,Oct 194.1,Nov 95.6,Dec 54.4
      Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,Aug 170.0,Sep 58.4,Oct 18.0,Nov 9.3,Dec 2.7
      Lima:Jan 1.2,Feb 0.9,Mar 0.7,Apr 0.4,May 0.6,Jun 1.8,Jul 4.4,Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7
    TEXT
  end

  context 'when arguments are correct' do
    it 'returns an array with data' do
      expect(subject).to eq [48.0, 38.9, 39.9, 42.2, 47.3, 52.1, 59.5, 57.2, 55.4, 62.0, 59.0, 52.9]
    end
  end
  context 'when town is missing' do
    let(:town) { '12' }
    it 'returns an empty array' do
      expect(subject).to eq []
    end
  end
  context 'when the second argument has wrong format' do
    let(:strng) { '123' }
    it 'returns an empty array' do
      expect { subject }.to raise_error(NoMethodError)
    end
  end
end

shared_context 'wheather data' do
  let(:wheater_data) { [81.2, 63.2, 70.3, 55.7, 53.0, 36.4, 17.5, 27.5, 60.9, 117.7, 111.0, 97.9] }
end

RSpec.describe 'def mean' do
  let(:town) { 'London' }
  let(:string) { 'some string with data' }
  subject { mean(town, string) }
  before do
    allow_any_instance_of(Object).to receive(:value_of_month).with(town, string).and_return(wheater_data)
  end
  context 'when data is empty' do
    let(:wheater_data) { [] }
    it 'returns default value' do
      expect(subject).to eq(-1)
    end
  end

  context 'when data is present' do
    include_context 'wheather data'
    it 'returns default value' do
      expect(subject).to eq(66.02499999999999)
    end
  end
end

RSpec.describe 'def variance' do
  let(:town) { 'London' }
  let(:string) { 'some string with data' }
  subject { variance(town, string) }
  before do
    allow_any_instance_of(Object).to receive(:value_of_month).with(town, string).and_return(wheater_data)
  end
  context 'when data is empty' do
    let(:wheater_data) { [] }
    it 'returns default value' do
      expect(subject).to eq(-1)
    end
  end

  context 'when data is present' do
    include_context 'wheather data'
    it 'returns default value' do
      expect(subject).to eq(915.3852083333335)
    end
  end
end
