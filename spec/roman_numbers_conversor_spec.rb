require_relative "../lib/roman_numbers_conversor.rb"

RSpec.describe RomanNumbersConversor do
    before(:each) do
        @roman = RomanNumbersConversor.new
    end

    it "converts numbers to roman" do
        assertRoman 1, "I"
        assertRoman 2, "II"
        assertRoman 3, "III"
        assertRoman 4, "IV"
        assertRoman 5, "V"
        assertRoman 6, "VI"
        assertRoman 7, "VII"
        assertRoman 9, "IX"
        assertRoman 10, "X"
        assertRoman 20, "XX"
        assertRoman 2014, "MMXIV"
        assertRoman 19, "XIX"
    end

    def assertRoman number, romain
        expect(@roman.fromNumbers(number)).to eq(romain)
    end
end
