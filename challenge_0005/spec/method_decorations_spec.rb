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
end
