class Author
  attr_reader :first_name, :last_name, :books, :name

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
    @name = "#{@first_name} #{@last_name}"
  end

  def write(title, publication_date)
    @books << book = Book.new({:title => true, :publication_date => true})
    # @books << Book.new(:title, :publication_year)
  end

end
