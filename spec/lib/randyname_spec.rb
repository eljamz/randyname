require_relative "../spec_helper"

describe Randyname do
  it "generates a name like still-silence-5012" do
    name = Randyname.randymize

    expect(name).to match(/\A\w+-\w+-\d{1,4}\z/)
  end

  it "won't return the same name for subsequent calls" do
    name1 = Randyname.randymize
    name2 = Randyname.randymize

    expect(name1).not_to eql(name2)
  end

  it "permits optional configuration of the token range" do
    name = Randyname.randymize(9)

    expect(name).to match(/-\d{1}\z/)
  end

  it "drops the token if token range is 0" do
    name = Randyname.randymize(0)

    expect(name).to match(/\A\w+-\w+\z/)
  end

  it "permits optional configuration of the delimiter" do
    name = Randyname.randymize(9999, ".")

    expect(name).to match(/\A\w+\.\w+\.\d{1,4}\z/)
  end

  it "drops the token and delimiter if token range is 0 and delimiter empty space" do
    name = Randyname.randymize(0, " ")

    expect(name).to match(/\A\w+ \w+\z/)
  end

  it "config adjectives" do
    adjectives = %w{good better}
    Randyname.adjectives = adjectives
    name =  Randyname.randymize

    expect(adjectives).to include(name.split('-')[0])
  end

  it "config nouns" do
    nouns = %w{boy girl}
    Randyname.nouns = nouns
    name =  Randyname.randymize

    expect(nouns).to include(name.split('-')[1])
  end
end
