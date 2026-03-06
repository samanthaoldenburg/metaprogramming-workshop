require_relative "parent"

class Child < Parent
  cttr_accessor :child_read_and_write_value
end
