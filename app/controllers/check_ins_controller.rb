class CheckInsController < ApplicationController

  def index
    @check_in = CheckIn.new
  end

  def create
    @check_in = CheckIn.new(check_in_params)
    if @check_in.valid?
      @check_in.check_in
      flash[:notice] = "You checked in #{@check_in.books.pluck(:title).to_sentence} for #{@check_in.card.name}"
      redirect_to(check_ins_path)
    else
      render :index
    end
  end

  private

  def check_in_params
    params.require(:check_in).permit(:card_barcode, :book_barcodes)
  end

end
