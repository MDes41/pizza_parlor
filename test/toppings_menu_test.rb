require 'minitest/autorun'
require_relative '../lib/toppings_menu'

class ToppingMenuTest < Minitest::Test

  def test_toppings_menu_is_a_class
    assert ToppingMenu
  end

  def test_load_menu_is_a_method
    assert ToppingMenu.method_defined? :load_data
  end

  def test_load_menu_creates_parses_line
    tm = ToppingMenu.new
    tm.load_data("./data/toppings.csv")
    t = tm.find_by_name("anchovies")
    t.name
  end

end
