require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'is valid with valid attributes' do
    expect(described_class.new(name: 'Anything')).to be_valid
  end

  it 'is not valid without a name' do
    author = described_class.new(name: nil)
    expect(author).not_to be_valid
  end
end
