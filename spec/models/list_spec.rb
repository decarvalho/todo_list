require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#title' do
    let(:list) { build :list, title: nil }

    it 'validates presence of title' do
      expect(list).to_not be_valid
    end
  end

  describe 'associations' do
    describe 'items' do
      let(:list) { create :list }

      context 'when trying to delete items' do
        before do
          create :item, list: list
          create :item
          list.destroy
        end

        it 'deletes associated items' do
          expect(Item.all.size).to eq 1
        end
      end
    end
  end
end
