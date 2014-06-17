class RomanNumbersConversor

    def initialize
        @romanNumbers = {
            1000 => "M",
            999 => "IM",
            500 => "D",
            499 => "ID",
            100 => "C",
            99 => "IC",
            50 => "L",
            49 => "IL",
            10 => "X",
            9 => "IX",
            5 => "V",
            4 => "IV",
            1 => "I"
        }
    end

    def fromNumbers inputNumber
        outputRoman = ""

        @romanNumbers.each do |number, roman|
            while inputNumber >= number
                outputRoman += roman
                inputNumber -= number
            end
        end

        return outputRoman
    end
end
