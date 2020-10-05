require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'is valid with valid attributes' do
    expect(described_class.new(title: 'Anything')).to be_valid
  end

  it 'is not valid without a title' do
    category = described_class.new(title: nil)
    expect(category).not_to be_valid
  end
end
