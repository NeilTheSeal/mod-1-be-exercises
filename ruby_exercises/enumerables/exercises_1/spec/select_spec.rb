# typed: false

# rubocop:disable Lint/UselessAssignment
RSpec.describe "select" do # rubocop:disable Metrics/BlockLength
  xit "even numbers" do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = numbers.select(&:even?)
    expect(evens).to eq([2, 4, 6, 8, 10])
  end

  xit "odd numbers" do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    odds = numbers.select(&:odd?)
    expect(odds).to eq([1, 3, 5, 7, 9])
  end

  xit "words wxith three letters" do
    words = %w[pill bad finger cat blue dog table red]
    selected = words.select do |word|
      word.length == 3
    end
    expect(selected).to eq(%w[bad cat dog red])
  end

  xit "words wxith more than three letters" do
    words = %w[pill bad finger cat blue dog table red]
    # Your code goes here
    expect(selected).to eq(%w[pill finger blue table])
  end

  xit "wordss ending in e" do
    words = %w[are you strike thinking belt piece warble
               sing pipe]
    # Your code goes here
    expect(selected).to eq(%w[are strike piece warble pipe])
  end

  xit "words ending in ing" do
    words = %w[bring finger drought singing bingo purposeful]
    # Your code goes here
    expect(selected).to eq(%w[bring singing])
  end

  xit "words containing e" do
    words = %w[four red five blue pizza purple]
    # Your code goes here
    expect(selected).to eq(%w[red five blue purple])
  end

  xit "dinosaurs" do
    animals = %w[tyrannosaurus narwhal eel achillesaurus
                 qingxiusaurus]
    # Your code goes here
    expect(dinosaurs).to eq(%w[tyrannosaurus achillesaurus qingxiusaurus])
  end

  xit "floats" do
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    # Your code goes here
    expect(floats).to eq([1.4, 3.5, 4.9, 9.1, 8.0])
  end

  xit "arrays" do
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # Your code goes here
    expect(arrays).to eq([["dog"], [56, 3, 8]])
  end

  it "hashes" do
    elements = ["cat", { dog: "fido" }, 23, { stuff: "things" },
                "aimless", 43]
    hashes = elements.select do |element|
      element.instance_of?(Hash)
    end
    expect(hashes).to eq([{ dog: "fido" }, { stuff: "things" }])
  end
end
# rubocop:enable Lint/UselessAssignment
