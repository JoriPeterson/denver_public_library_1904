require "minitest/autorun"
require "minitest/pride"
require "./lib/book"
require "./lib/author"

class AuthorTest < Minitest::Test

    def setup
      @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    end

    def test_it_exists
      assert_instance_of Author, @charlotte_bronte
    end

    def test_it_has_attributes
      assert_equal "Charlotte Bronte", @charlotte_bronte.name
      assert_equal [], @charlotte_bronte.books
    end

    def test_writes_a_book
      # jane_eyre = Book.new({title: "Jane Eyre", publication_date: "October 16, 1847"})
      # villette = Book.new({title: "Villette", publication_year: "1853"})
      jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      assert_equal "Jane Eyre", jane_eyre.title
      @charlotte_bronte.write("Villette", "1853")

      # @charlotte_bronte.write(jane_eyre)
      # @charlotte_bronte.write(villette)
      assert_equal [jane_eyre, villette], @charlotte_bronte.books
    end


end
