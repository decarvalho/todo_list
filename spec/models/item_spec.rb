require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#body' do
    let(:item) { build :item, body: nil }
    it 'validates presence of body' do
      expect(item).to_not be_valid
    end
  end

  describe 'associations' do
    describe 'list' do
      let(:item) { build :item, list: nil }

      context 'when trying to create items' do
        it 'must have a list associated' do
          expect(item).to_not be_valid
        end
      end
    end
  end
end
