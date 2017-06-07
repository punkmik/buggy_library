module LoansHelper

  def expiry_date_class(loan)
    loan.overdue? ? 'text-danger bg-danger' : ''
  end

end
