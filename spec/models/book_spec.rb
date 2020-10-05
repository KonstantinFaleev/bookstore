require 'rails_helper'

RSpec.describe Book, type: :model do
  subject(:book) {
    described_class.new(title: 'Anything',
                        description: 'Anything',
                        price: 10.5,
                        category_id: 1,
                        author_id: 1)
  }

  it 'is valid with valid attributes' do
    expect(book.valid?).to be(true)
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(book).not_to be_valid
  end
end
