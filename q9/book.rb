# 9. Build a Ruby class called "Book". Objects of the Book class must have two attributes: title and chapters. Objects must have two methods: add_chapter and chapters. The `add_chapter` methods adds a chapter by giving it a title. The chapters method should display the number of chapters and lists all the chapters as in:

class Book
  attr_accessor :title
  attr_accessor :chapters

  def chapters
    # @chapters
    i = 0
    p "Your book: #{title} has #{@chapters.length} chapters:"
    @chapters.each do |chapter|
      i += 1
      p "#{i}. #{chapter}"
    end
  end

  def chapters=(c)
    @chapters = c
  end

  def initialize(title="", chapters=[])
    self.title = title
    self.chapters = chapters
  end

  def add_chapter(c)
    @chapters << c
  end
end

# test
book = Book.new
book.title = "My Awesome Book"
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.add_chapter("My Awesome Chapter 3")
book.add_chapter("My Awesome Chapter 4")
book.add_chapter("My Awesome Chapter 5")
book.add_chapter("My Awesome Chapter 6")
book.chapters
# This should print:
# Your book: My Awesome Book has 2 chapters:
# 1. My Awesome Chapter 1
# 2. My Awesome Chapter 2
