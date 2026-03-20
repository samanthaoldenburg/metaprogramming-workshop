RSpec.describe MethodDecorations do
  describe "`static` class macro" do
    it "can make a instance-level method callable at the class level" do
      expect(Foo).to respond_to :bar

      expect(Foo.bar).to eq "bar"
    end

    it "static methods can take arguments" do
      expect(Foo.echo(:a, :b, :c)).to eq([:a, :b, :c])
    end

    describe "Inheritance" do
      it "static methods are inherited" do
        Baz = Class.new(Foo)

        expect(Baz.bar).to eq "bar"
      end

      it "static methods can be overriden" do
        Baz = Class.new(Foo) do
          def bar = "foo"
        end

        expect(Baz.bar).to eq "foo"
      end
    end

    context "when a class requires variables to initialize" do
      it "still can call the static methods" do
        expect(Bar.bar).to eq "bar"
        expect(Bar.echo(:a, :b, :c)).to eq([:a, :b, :c])
      end
    end
  end

  describe "`const` class macro" do
    it "saves the result of the first call of a method to a const with the same name" do
      expect(Foo).to receive(:random_number_between).with(1..1000).once.and_return(343)

      expect(Foo.new.random_number).to eq(343)
      expect(Foo.new.random_number).to eq(343)
      expect(Foo.new.random_number).to eq(343)
      expect(Foo::RANDOM_NUMBER).to eq(343)

      Foo.send(:remove_const, :RANDOM_NUMBER)
    end

    it "can be combined with the `static` macro" do
      expect(Foo).to receive(:random_number_between).with(1..1000).and_return(343)
      expect(Foo).to receive(:random_number_between).with(1..10000).and_return(2401)

      expect(Bar.double_random).to eq([343, 2401])
      expect(Bar.double_random).to eq([343, 2401])
      expect(Bar.double_random).to eq([343, 2401])

      expect(Bar::DOUBLE_RANDOM).to eq([343, 2401])

      Bar.send(:remove_const, :DOUBLE_RANDOM)
    end
  end
end
