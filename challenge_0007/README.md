Challenge #0007 - Advanced Macros
=======================================================

The goal is to `const` macro. Using `const` in front of an instance method makes it callable at the class level.

``` ruby
class Foo
  extend MethodDecorations

  const def bar
    rand(1..10_000)
  end
end

Foo.new.bar  # => 8492
Foo.new.bar  # => 8492
Foo.new.bar  # => 8492
Foo.new.bar  # => 8492
Foo.new.bar  # => 8492

Foo::BAR # => 8492
```

You should also be able to chain the `static` macro defined in [Challenge #0005](../challenge_0005/README.md)

``` ruby
class Baz
  extend MethodDecorations

  static const def qux
    rand(1..10_000)
  end
end

Bar.qux    # => 4895
Bar.qux    # => 4895
Bar.qux    # => 4895
Bar.qux    # => 4895
Bar.qux    # => 4895

Bar::QUX   # => 4895
```

You can evaluate your solution against the test via:

``` sh
bundle exec rspec
```


## Hints

> [!TIP]
> Hints are encoded in [ROT47](https://doctorlai.github.io/rot47-converter/) to prevent spoilers :D


### Hint 1

```
AC6A6?5
```
