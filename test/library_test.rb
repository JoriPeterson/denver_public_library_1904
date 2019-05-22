require "minitest/autorun"
require "minitest/pride"
require "./lib/book"
require "./lib/author"
require "./lib/library"

class LibraryTest < Minitest::Test

  def setup
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  def test_it_exists
    assert_instance_of Library, @dpl
  end

  def test_it_has_attributes
    assert_equal "Denver Public Libary", @dpl.name
    assert_equal [], @dpl.books
    assert_equal [], @dpl.authors
end
