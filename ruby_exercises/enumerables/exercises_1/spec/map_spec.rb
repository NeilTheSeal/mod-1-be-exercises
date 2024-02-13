# typed: false

# rubocop:disable Lint/UselessAssignment
RSpec.describe "map" do # rubocop:disable Metrics/BlockLength
  it "capitalizes" do
    names = %w[alice bob charlie]
    capitalized_names = names.map(&:capitalize)
    expect(capitalized_names).to eq(%w[Alice Bob Charlie])
  end

  it "doubles" do
    numbers = [1, 2, 3, 4, 5]
    doubles = numbers.map do |number|
      number * 2
    end
    expect(doubles).to eq([2, 4, 6, 8, 10])
  end

  it "squares" do
    numbers = [1, 2, 3, 4, 5]
    squares = numbers.map do |number|
      number**2
    end
    expect(squares).to eq([1, 4, 9, 16, 25])
  end

  it "lengths" do
    names = %w[alice bob charlie david eve]
    # Your code goes here
    expect(lengths).to eq([5, 3, 7, 5, 3])
  end

  it "normalize zip codes" do
    numbers = [234, 10, 9119, 38_881]
    # Your code goes here
    expect(zip_codes).to eq(%w[00234 00010 09119 38881])
  end

  it "backwards" do
    names = %w[alice bob charlie david eve]
    # Your code goes here
    expect(backwards).to eq(%w[ecila bob eilrahc divad eve])
  end

  it "words with no vowels" do
    words = %w[green sheep travel least boat]
    # Your code goes here
    expect(without_vowels).to eq(%w[grn shp trvl lst bt])
  end

  it "trims last letter" do
    animals = %w[dog cat mouse frog platypus]
    # Your code goes here
    expect(trimmed).to eq(%w[do ca mous fro platypu])
  end
end
# rubocop:enable Lint/UselessAssignment
