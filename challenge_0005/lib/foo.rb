require_relative "method_decorations"

class Foo
  extend MethodDecorations

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
