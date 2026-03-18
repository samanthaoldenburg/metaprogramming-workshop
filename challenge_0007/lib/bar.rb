require_relative "foo"

class Bar < Foo
  def initialize(val)
    @val = val
  end

  static def double_echo(*args)
    args.zip(args).map { |a, b| [a, b] }.flatten
  end

  static const def double_random
    [Foo.random_number_between(1..1000), Foo.random_number_between(1..10000)]
  end
end
