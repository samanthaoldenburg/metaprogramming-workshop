Challenge #0007 - Advanced DSLs
=======================================================

We're going to be creating a DSL to define instance variables via `let`, similar to Rspec.

``` ruby
class Foo
  include RspecY
  
  let(:bar) { "my_string" }
  let(:baz) { rand(1..100000)
  let!(:qux) { :howdy }
end

Foo.new.bar # => "my_string"

# Memoized
Foo.new.baz == Foo.new.baz # => true

# let! automatically set at initialize
Foo.new.instance_variable_get(:@qux) # => :howdy
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
*@F >2J ?665 E@ 567:?6 >@C6 >@5F=6D E@ D@=G6 E9:D 492==6?86]
```

### Hint 2

```
yFDE =:<6 H:E9 r92==6?86 R___e[ J@FVC6 8@:?8 E@ ?665 E@ AC6A6?5 2 >6E9@5]
```
