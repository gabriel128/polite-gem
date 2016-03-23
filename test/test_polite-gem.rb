require 'minitest/autorun'
require './lib/polite-gem'

class Mock
  def do_complex_operation
    "something"
  end

  def self.another_complex_stuff
    "other thing"
  end

end
class TestPoliteGem < MiniTest::Test
  def test_an_object_can_be_asked_politly_to_do_something
    assert_equal "something", Mock.new.please.do_complex_operation
  end

  def test_an_object_acept_gratitude
    assert_equal "something", Mock.new.please.do_complex_operation.thanks!
  end

  def test_an_object_acept_gratitude_at_class_instance
    assert_equal "other thing", Mock.please.another_complex_stuff.thanks!
  end
end
