require_relative "static_methods"

class Foo
  extend StaticMethods

  static def bar
    "bar"
  end

  static def echo(*args)
    args
  end

  def baz
    "baz"
  end
end
