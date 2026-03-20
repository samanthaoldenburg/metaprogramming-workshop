RSpec.describe RspecY do
  describe "`let`" do
    it "can define and implement values for instance variables" do
      allow(Foo).to receive(:random_number_between).and_return(343)

      foo = Foo.new

      expect(foo.random_number).to eq(343)
    end

    it "the value is memoized" do
      allow(Foo).to receive(:random_number_between).and_return(343)
      expect(Foo).to receive(:random_number_between).with(1..1000).once

      foo = Foo.new

      expect(foo.random_number).to eq(343)
      expect(foo.random_number).to eq(343)
      expect(foo.random_number).to eq(343)
      expect(foo.random_number).to eq(343)

      ivar_value = foo.instance_variable_get(:@random_number)

      expect(ivar_value).to eq(343)
    end

    it "implementations can reference other let variables" do
      allow(Foo).to receive(:random_number_between).and_return(343)

      foo = Foo.new

      expect(foo.random_number_times_2).to eq(686)
    end
  end

  describe "`let!`" do
    it "can define and implement values for instance variables" do
      allow(Foo).to receive(:random_number_between).and_return(2401)

      foo = Foo.new

      expect(foo.random_number2).to eq(2401)
    end

    it "the value is memoized" do
      allow(Foo).to receive(:random_number_between).and_return(2401)
      expect(Foo).to receive(:random_number_between).with(1..10000).once

      foo = Foo.new

      expect(foo.random_number2).to eq(2401)
      expect(foo.random_number2).to eq(2401)
      expect(foo.random_number2).to eq(2401)
      expect(foo.random_number2).to eq(2401)

      ivar_value = foo.instance_variable_get(:@random_number2)

      expect(ivar_value).to eq(2401)
    end

    it "the value is set upon #initialize" do
      expect(Foo).to receive(:random_number_between).with(1..10000).once.and_return(2401)

      foo = Foo.new

      ivar_value = foo.instance_variable_get(:@random_number2)

      expect(ivar_value).to eq(2401)
    end

    it "implementations can reference other let variables" do
      allow(Foo).to receive(:random_number_between).and_return(2401)

      foo = Foo.new

      expect(foo.random_number2_minus_1).to eq(2400)
    end
  end
end
