require_relative "method_decorations"

class Foo
  extend MethodDecorations

  def self.random_number_between(range) = rand(range)

  static def bar
    "bar"
  end

  static def echo(*args)
    args
  end

  const def random_number
    Foo.random_number_between(1..1000)
  end

  def baz
    "baz"
  end
end
