Challenge #0005 - Intermediate Macros
=======================================================

The goal is to `static` macro. Using static in front of an instance method makes it callable at the class level.

``` ruby
class Foo
  static def bar
    "bar"
  end
end

Foo.bar # => "bar"
```


You can evaluate your solution against the test via:

``` sh
bundle exec rspec
```


