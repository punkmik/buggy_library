class Card < ApplicationRecord

  before_create :set_barcode
  validates :barcode, uniqueness: true

  has_many :loans

  def can_destroy?
    loans.none?
  end

end
