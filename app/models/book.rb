class Book < ApplicationRecord

  belongs_to :author
  belongs_to :genre

  before_create :set_barcode
  validates :barcode, uniqueness: true

  validates :title, presence: true, length: { maximum: 50 }
  validates :height, presence: true, numericality: { greater_than: -5, less_than_or_equal_to: 50 }

end
