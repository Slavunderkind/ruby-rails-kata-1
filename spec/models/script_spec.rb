require 'rails_helper'

RSpec.describe Script, type: :model do

  describe '#all' do
    subject { Script.new.all }

    context 'when only books exists' do
      let(:book) { create(:book) }

      before { book }

      it 'returns all records of books' do
        expect(subject).to eq([book])
      end
    end

    context 'when only magazine exists' do
      let(:magazine) { create(:magazine) }

      before { magazine }

      it 'returns all records of magazines' do
        expect(subject).to eq([magazine])
      end
    end
  end

  describe '#by_isbn' do
  end
  describe '#by_authors_email' do
  end
  describe '#all_sorted_by_title' do
  end
end
