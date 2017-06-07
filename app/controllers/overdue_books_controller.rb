class OverdueBooksController < ApplicationController

  helper LoansHelper

  def index
    @loans = Loan.overdue
  end

  def notify
    raise("Email is not configured")
  end

end
