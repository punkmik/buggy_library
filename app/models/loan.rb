class Loan < ApplicationRecord

  belongs_to :book
  belongs_to :card

  scope :current, -> {where(current: true)}

end
