module HasBarcode

  TEMPLATE = 'LLLLNNNNLLNN'
  LETTERS = 'BCDFGHJKLMNPQRSTVWXYZ'
  NUMBERS = '123456789'

  def set_barcode
    self.barcode ||= generate_barcode
  end

  private

  def generate_barcode
    code = TEMPLATE.each_char.map do |char|
      case char
        when 'L'
          LETTERS[rand(LETTERS.length)]
        when 'N'
          NUMBERS[rand(NUMBERS.length)]
      end
    end
    code.join
  end

end
