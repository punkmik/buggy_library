class Loan < ApplicationRecord

  belongs_to :book
  belongs_to :card

  scope :current, -> {where(current: true)}
  scope :overdue, -> {current.where("expiry_date <= ?", Date.today)}

  def overdue?
    current && expiry_date <= Date.today
  end

end
