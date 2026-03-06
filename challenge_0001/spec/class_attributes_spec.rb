RSpec.describe ClassAttributes do
  describe "cttr_accessor(name) Macro" do
    it "defines a class-level `.name` method on the class" do
      expect(Parent).to respond_to :read_and_write_value
    end

    it "`.name` gets the class-level instance variable" do
      Parent.instance_variable_set(:@read_and_write_value, :foo)
      expect(Parent.read_and_write_value).to be :foo
    end

    it "defines a class-level `.name=` method on the class" do
      expect(Parent).to respond_to :read_and_write_value=
    end

    it "`.name=` sets the class-level instance variable" do
      Parent.read_and_write_value = :foo
      expect(Parent.instance_variable_get(:@read_and_write_value)).to be :foo
    end
  end

  describe "cttr_reader(name) Macro" do
    it "defines a class-level `.name` method on the class" do
      expect(Parent).to respond_to :read_only_value
    end

    it "`.name` gets the class-level instance variable" do
      Parent.instance_variable_set(:@read_only_value, :bar)
      expect(Parent.read_only_value).to be :bar
    end

    it "does not define a class-level `.name=` method" do
      expect(Parent).not_to respond_to :read_only_value=
    end
  end

  describe "cttr_writer(name) Macro" do
    it "defines a class-level `.name=` method on the class" do
      expect(Parent).to respond_to :write_only_value=
    end

    it "`.name=` sets the class-level instance variable" do
      Parent.write_only_value = :foo
      expect(Parent.instance_variable_get(:@write_only_value)).to be :foo
    end

    it "does not define a class-level `.name=` method" do
      expect(Parent).not_to respond_to :write_only_value
    end
  end

  describe "Attribute Inheritance" do
    it "Child classes get their parent's attribute methods" do
      Child.read_and_write_value = :qux
      expect(Child.read_and_write_value).to be :qux

      Child.instance_variable_set(:@read_only_value, :quz)
      expect(Child.read_only_value).to be :quz

      Child.write_only_value = :thud
      expect(Child.instance_variable_get(:@write_only_value)).to be :thud
    end
  end
end
