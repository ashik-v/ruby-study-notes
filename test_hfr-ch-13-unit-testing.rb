require 'minitest/autorun'
require 'hfr-ch-13-unit-testing.rb'

class TestPerson < MiniTest::Test
  def test_introduction
    bob = Person.new
    bob.name = "Bob"
    assert_equal(bob.introduction, 'Hello, my name is Bob!')
  end
end

class TestListWithCommas < MiniTest::Test
  def setup
    @list = ListWithCommas.new
  end

  def test_it_joins_two_words_with_and
    @list.items = %w(apple orange)
    assert_equal('apple and orange', @list.join)
  end

  def test_it_joins_three_words_with_commas
    @list.items = %w(apple orange pear)
    assert_equal('apple, orange, and pear', @list.join)
  end

  def test_it_prints_one_word_alone
    @list.items = %w(apple)
    assert_equal('apple', @list.join)
  end
end
