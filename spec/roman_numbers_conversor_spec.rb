require_relative "../lib/roman_numbers_conversor.rb"

RSpec.describe RomanNumbersConversor do
    before(:each) do
        @roman = RomanNumbersConversor.new
    end

    it "converts numbers to roman" do
        assert_roman 1, "I"
        assert_roman 2, "II"
        assert_roman 3, "III"
        assert_roman 4, "IV"
        assert_roman 5, "V"
        assert_roman 6, "VI"
        assert_roman 7, "VII"
        assert_roman 9, "IX"
        assert_roman 10, "X"
        assert_roman 20, "XX"
        assert_roman 2014, "MMXIV"
        assert_roman 19, "XIX"
    end

    def assert_roman number, romain
        expect(@roman.fromNumbers(number)).to eq(romain)
    end
end
