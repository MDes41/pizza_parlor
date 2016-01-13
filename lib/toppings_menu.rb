require 'csv'
require_relative 'topping'

class ToppingMenu
  def load_data(data)
    contents = CSV.open data, headers: true, header_converters: :symbol
    @all = contents.to_a.map {|row| row.to_hash}
  end

  def find_by_name(inputed_name)
    matching_line = @all.find {|line| line[:name].downcase == inputed_name}
    Topping.new(matching_line)
  end
end
