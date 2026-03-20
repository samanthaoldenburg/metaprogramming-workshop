require_relative "rspec_y"

class Foo
  include RspecY

  # Helper that makes it easier to see method calls to rand
  def self.random_number_between(range) = rand(range)

  let(:random_number_times_2) { random_number + random_number }
  let!(:random_number2_minus_1) { random_number2 - 1 }

  let(:random_number) { Foo.random_number_between(1..1000) }
  let!(:random_number2) { Foo.random_number_between(1..10000) }
end
