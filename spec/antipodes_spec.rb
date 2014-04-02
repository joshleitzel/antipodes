require 'antipodes'

describe Antipodes do
  context 'with latitude and longitude' do
    subject { Antipodes.for(latitude, longitude) }

    context 'with positive latitude' do
      let(:latitude) { 47.6062095 }

      context 'with positive longitude' do
        let(:longitude) { 122.3320708 }

        it 'gets the antipodes' do
          expect(subject).to eq([ -47.6062095, -57.6679292 ])
        end
      end

      context 'with negative longitude' do
        let(:longitude) { -122.3320708 }

        it 'gets the antipodes' do
          expect(subject).to eq([ -47.6062095, 57.6679292 ])
        end
      end
    end

    context 'with negative latitude' do
      let(:latitude) { -47.6062095 }

      context 'with positive longitude' do
        let(:longitude) { 57.6679292 }

        it 'gets the antipodes' do
          expect(subject).to eq([ 47.6062095, -122.3320708 ])
        end
      end

      context 'with negative longitude' do
        let(:longitude) { -57.6679292 }

        it 'gets the antipodes' do
          expect(subject).to eq([ 47.6062095, 122.3320708 ])
        end
      end
    end
  end

  context 'with place name' do
    subject { Antipodes.for('Seattle') }

    before do
      Geocoder.configure(:lookup => :test)
      Geocoder::Lookup::Test.add_stub(
        'Seattle',
        [{
          'latitude' => 47.6062095,
          'longitude' => -122.3320708,
          'address' => 'Seattle, WA, USA',
          'state' => 'Washington',
          'state_code' => 'WA',
          'country' => 'United States',
          'country_code' => 'US'
        }]
      )
    end

    it 'gets the antipodes' do
      expect(subject).to eq([ -47.6062095, 57.6679292 ])
    end
  end
end

