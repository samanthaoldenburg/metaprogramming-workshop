RSpec.describe Rashie do
  it "is a child of Hash" do
    expect(Rashie).to be < Hash
  end

  it "can fetch symbol-keyed fields via dot-accessor" do
    rashie = Rashie.new

    rashie[:foo] = "foo"

    expect(rashie.foo).to eq "foo"
  end

  it "cannot set fields via dot-accessor" do
    rashie = Rashie.new
    expect { rashie.foo = "foo" }.to raise_error NoMethodError
  end

  it "does not support the predicate suffix (?)" do
    rashie = Rashie.new
    rashie[:foo] = true
    expect { rashie.foo? }.to raise_error NoMethodError
  end

  context "when the key is not set" do
    it "raises a KeyError when accessed via dot-accessor" do
      rashie = Rashie.new

      expect { rashie.foo }.to raise_error KeyError
    end
  end

  context "when additional arguments are sent with the dot-accessor" do
    it "raises a NoMethodError" do
      rashie = Rashie.new

      expect { rashie.foo(:bar) }.to raise_error NoMethodError
    end
  end
end
