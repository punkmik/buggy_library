class CheckIn
  include ActiveModel::Model

  attr_accessor :card_barcode, :book_barcodes

  validates :card_barcode, presence: true
  validates :book_barcodes, presence: true
  validate :has_card?
  validate :has_books?


  def check_in
    if valid?
      Loan.where(book_id: books.pluck(:id), card_id: card.id).update_all(current: false)
    end
  end

  def books
    Book.where(barcode: book_barcodes.split("\n").map(&:strip))
  end

  def card
    Card.where(barcode: card_barcode).first
  end

  protected

  def has_card?
    errors.add(:card_barcode, 'must be the barcode of a Library Card') if card.nil?
  end


  def has_books?
    errors.add(:book_barcodes, 'must include the barcode of at least one book') if books.none?
  end

end
