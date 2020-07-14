require 'pry'
class PigLatinizer
    def piglatinize(string)
        result = string.split(' ')
        if result.size == 1
            word_handler(result[0])
        else
            result = result.map do |word|
                word_handler(word)
            end
            result.join(" ")
        end
    end

    def word_handler(word)
        vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        first_letter = word[0]
        rotated_word = word.chars.rotate.join
        if vowels.include?(first_letter)
            "#{word}way"
        else
            while vowels.include?(rotated_word[0]) == false do
                rotated_word = rotated_word.chars.rotate.join
            end
            "#{rotated_word}ay"
        end
    end
end