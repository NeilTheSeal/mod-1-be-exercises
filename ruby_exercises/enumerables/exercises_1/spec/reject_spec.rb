# typed: false

# rubocop:disable Lint/UselessAssignment
RSpec.describe "reject" do # rubocop:disable Metrics/BlockLength
  it "removes zeroes" do
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = numbers.reject(&:zero?)
    expect(filtered).to eq([2, 93, 7, 1, 31, 368])
  end

  xit "removes vowels" do
    letters = ["a", "l", "l", " ", "y", "o", "u", "r", " ", "b", "a", "s", "e",
               " ", "a", "r", "e", " ", "b", "e", "l", "o", "n", "g", " ", "t", "o", " ", "u", "s"]
    remaining = letters.reject do |letter|
      # Your code goes here
    end
    expect(remaining).to eq(["l", "l", " ", "r", " ", "b", "s", " ", "r", " ",
                             "b", "l", "n", "g", " ", "t", " ", "s"])
  end

  xit "remove numbers divisible by 3" do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
               19, 20]
    # Your code goes here
    expect(remaining).to eq([1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20])
  end

  xit "remove words longer tghan three letters" do
    words = %w[pill bad finger cat blue dog table red]
    # Your code goes here
    expect(selected).to eq(%w[bad cat dog red])
  end

  xit "remove words ending in e" do
    words = %w[are you strike thinking belt piece warble
               sing pipe]
    # Your code goes here
    expect(selected).to eq(%w[you thinking belt sing])
  end

  xit "remove words ending in ing" do
    words = %w[bring finger drought singing bingo purposeful]
    # Your code goes here
    expect(selected).to eq(%w[finger drought bingo purposeful])
  end

  xit "remove words containing e" do
    words = %w[four red five blue pizza purple]
    # Your code goes here
    expect(selected).to eq(%w[four pizza])
  end

  xit "remove dinosaurs" do
    animals = %w[tyrannosaurus narwhal eel achillesaurus
                 qingxiusaurus]
    # Your code goes here
    expect(notasaurus).to eq(%w[narwhal eel])
  end

  xit "remove numbers" do
    elements = ["cat", "dog", 23, 81.1, 56, "aimless", 43]
    # Your code goes here
    expect(not_numbers).to eq(%w[cat dog aimless])
  end

  xit "remove floats" do
    elements = ["cat", "dog", 32.333, 23, 56, "aimless", 43.2]
    # Your code goes here
    expect(not_numbers).to eq(["cat", "dog", 23, 56, "aimless"])
  end

  xit "remove animals starting with a vowel" do
    animals = %w[aardvark bonobo cat dog elephant]
    # Your code goes here
    expect(remaining).to eq(%w[bonobo cat dog])
  end

  xit "remove upcased words" do
    words = %w[CAT dog AIMLESS Trevor butter]
    # Your code goes here
    expect(remaining).to eq(%w[dog Trevor butter])
  end

  xit "remove arrays" do
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # Your code goes here
    expect(remaining).to eq(["CAT", 23, "AIMLESS", 43, "butter"])
  end

  xit "remove hashes" do
    elements = ["cat", { dog: "fido" }, 23, { stuff: "things" },
                "aimless", 43]
    # Your code goes here
    expect(remaining).to eq(["cat", 23, "aimless", 43])
  end
end
# rubocop:enable Lint/UselessAssignment
