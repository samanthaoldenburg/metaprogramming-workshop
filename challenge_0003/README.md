Challenge #0003 - Code Location
==========================

One of the underrated capabilities of Ruby is its ability to understand the locality of code as its executed. Things
such as instant access to the callstack and file/directory of a particular piece of code can be leveraged in many useful
ways.

This exercise calls for you to implement a `require_directory` method.

Imagine a file `/foo/bar/baz.rb`:

``` ruby
# Filename: /foo/bar/baz.rb

# Requires all ruby files in `/foo/bar/qux/*.rb`
RequireHelper.require_directory("/foo/bar/qux.rb")


# Requires all ruby files in `/foo/bar/baz/*.rb`
RequireHelper.require_directory

# Requires all ruby files in `/foo/bar/baz/*.rb` + `/foo/bar/baz/**/*.rb`
RequireHelper.require_directory recursive: true
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
r964< @FE E96 005:C00 >6E9@5i 9EEADi^^HHH]CF3J5@4]:?7@^DE5=:3^4@C6^z6C?6=R005:C00\:?DE2?460>6E9@5
```

### Hint 2

```
s:C]8=@3 W2?5 :EVD 4@?G6?:6?46 >6E9@5 s:C],. \ 9EEADi^^CF3J\5@4]@C8^4@C6\b]_]_^s:C]9E>=R>6E9@5\4\dq\dsX 2C6 J@FC 7C:6?5i 9EEADi^^CF3J\5@4]@C8^4@C6\b]_]_^s:C]9E>=R>6E9@5\4\8=@3
```


## Bonus Challenge - The Self-Reloading Script

> [!NOTE]
> This is an optional challenge that has no tests associated with it.

### Introduction

I often do script development via the REPL, as it's a great way to rapid prototype. The tool that makes it easy is that
any Ruby class can be given a method `reload!`, which reloads the file which defines the class.


``` ruby
class MyCoolScript
  def cool_helper_method
    # My very cool method. I'm in the middle of developing it. Maybe it extracts the Jira ticket
    # from the current branch name. Maybe it opens our sprint board. It might even set a reminder
    # for me. Whatever it is, it's cool, and I'm iterating in order to build it.
    ...
  end

  def reload! = raise NotImplementedError
end
```

This means I can test my script like so, in an `irb` console:

``` ruby
> require "./my_cool_script"
> my_script = MyCoolScript.new
>
> my_script.cool_helper_method

```

See the results, make changes to the file, and then run:

``` ruby
> my_script.reload!
```

And now I can re-run `my_script.cool_helper_method` with the new changes! No need to reboot the `irb` console.


### The Bonus Question

Implement `reload!`. It's only two expressions.

**Answer:**

```
567 C6=@25P l =@25 00ux{t00
```

