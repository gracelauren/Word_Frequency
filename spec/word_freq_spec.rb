require('rspec')
require('word_freq')
require('pry')

describe('String#word_freq') do
  it("returns 'Please enter a word into each box' 0 if no words are entered") do
    expect("".word_freq("")).to(eq("Please enter a word into each box"))
  end

  it("returns 1 if the word given matches the second word given") do
    expect("hello".word_freq("hello")).to(eq(1))
  end

  it("returns 0 if the word given does not match the second word given") do
    expect("hello".word_freq("good-bye")).to(eq(0))
  end

  it("breaks up a given string of multiple words, finds all whole word instances of a given word") do
    expect("I love cookies".word_freq("cookies")).to(eq(1))
  end
end
