RSpec.describe NumberWords do
  it "can make numbers like 9 and 5 using english words" do
    extend NumberWords

    foo = nine
    bar = five

    expect(foo).to eq 9
    expect(bar).to eq 5
  end

  it "can make 10 using its english word" do
    extend NumberWords

    foo = ten

    expect(foo).to eq 10
  end

  it "can make numbers like 12 and 18 using english words" do
    extend NumberWords

    foo = twelve
    bar = eighteen

    expect(foo).to eq 12
    expect(bar).to eq 18
  end

  it "can make numbers like 30 and 50 using english words" do
    extend NumberWords

    foo = thirty
    bar = fifty

    expect(foo).to eq 30
    expect(bar).to eq 50
  end

  it "can make numbers like 72 and 94 using english words" do
    extend NumberWords

    foo = seventy two
    bar = ninety four

    expect(foo).to eq 72
    expect(bar).to eq 94
  end
end
