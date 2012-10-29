module BooksHelper
  def show_cover (book, size)
	
    if(book.cover?)
	  image_tag book.cover.url(size)
	else
	  # path to placeholder image
	end
  end
end
