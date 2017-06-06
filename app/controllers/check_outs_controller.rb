class CheckOutsController < ApplicationController

  def index
    @check_out = CheckOut.new
  end

  def create
    @check_out = CheckOut.new(check_out_params)
    if @check_out.valid?
      @check_out.check_out
      flash[:notice] = "You checked out #{@check_out.books.pluck(:title).to_sentence} for #{@check_out.card.name}"
      redirect_to(check_outs_path)
    else
      render :index
    end
  end

  private

  def check_out_params
    params.require(:check_out).permit(:card_barcode, :book_barcodes)
  end

end
