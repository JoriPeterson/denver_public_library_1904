class Book
  attr_reader :author_first_name, :author_last_name, :title, :publication_date, :author, :publication_year

  def initialize(details)
    @author_first_name = details[:author_first_name]
    @author_last_name = details[:author_last_name]
    @title = details[:title]
    @publication_date = details[:publication_date]
    @author = "#{@author_first_name} #{@author_last_name}"
    @publication_year = details.values.last[-4..-1]
  end

end
