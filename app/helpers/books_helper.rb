module BooksHelper

  def author_options
    Author.order(:name).collect {|p| [ p.name, p.id ] }
  end

  def genre_options
    Genre.order(:name).collect {|p| [ p.name, p.id ] }
  end

end
