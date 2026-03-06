require_relative "foo"

class Bar < Foo
  def initialize(val)
    @val = val
  end

  static def double_echo(*args)
    args.zip(args).map { |a, b| [a, b] }.flatten
  end
end
