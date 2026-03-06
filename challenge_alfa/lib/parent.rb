require_relative "class_attributes"

class Parent
  extend ClassAttributes

  cttr_accessor :read_and_write_value
  cttr_writer :write_only_value
  cttr_reader :read_only_value

  def self.read_my_write_only_value
    @write_only_value
  end
end
