module LoansHelper

  def expiry_date_class(loan)
    loan.overdue? ? 'text-danger' : ''
  end

end
