require 'rails_helper'

RSpec.describe Script, type: :model do

  describe '#all' do
    subject { Script.new.all }

    let(:book) { create(:book) }
    let(:magazine) { create(:magazine) }

    context 'when only books exists' do
      before { book }

      it 'returns all records of books' do
        expect(subject).to eq([book])
      end
    end

    context 'when only magazine exists' do
      before { magazine }

      it 'returns all records of magazines' do
        expect(subject).to eq([magazine])
      end
    end

    context 'when book and magazine exists' do
      before do
        book
        magazine
      end

      it 'returns all records of magazines' do
        expect(subject).to eq([book, magazine])
      end
    end

    context 'when no data exists' do
      it 'returns an empty array' do
        expect(subject).to eq([])
      end
    end
  end

  describe '#by_isbn' do
    subject { Script.new.by_isbn(isbn) }

    let!(:book) { create(:book) }
    before { book }

    context 'when a book with given isbn exists' do
      let(:isbn) { book.isbn }

      it 'returns a book record' do
        expect(subject).to eq(book)
      end
    end

    context 'when a script with given isbn do not exist' do
      let(:isbn) { '1111-1111' }

      it 'returns a nil' do
        expect(subject).to eq(nil)
      end
    end
  end

  describe '#by_authors_email' do
    subject { Script.new.by_authors_email(email) }

    let(:book) { create(:book, authors_emails: 'first@gmail.com, second@gmail.com') }
    before { book }

    context 'when a book with given author email exists' do
      let(:email) { 'first@gmail.com' }

      it 'returns a book record' do
        expect(subject).to eq([book])
      end
    end
  end
  describe '#all_sorted_by_title' do
  end
end
