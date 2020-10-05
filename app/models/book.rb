class Book < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :author, optional: true
  validates_associated :author
  validates :title, :description, :price, presence: true
end
