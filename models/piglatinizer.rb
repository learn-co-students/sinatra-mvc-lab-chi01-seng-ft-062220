class PigLatinizer
    attr_accessor :string

    def initialize
        @string = string
    end

    def piglatinize(string)
        separated_words = string.split
        pig_latin = []
        separated_words.each do |word|
            if word.downcase.start_with?(/[aeiou]/) || word.length == 1
                pig_latin << "#{word}way"
            
                
            elsif word[0..2].downcase.split.any?(/[aeiou]/) == false
                reorderd = word.chars.rotate(3).join
                pig_latin << "#{reorderd}ay"
            
            elsif word[0..1].downcase.split.any?(/[aeiou]/) == false
                reorderd = word.chars.rotate(2).join
                pig_latin << "#{reorderd}ay"
            
            else
                order_change = word.chars.rotate.join
                pig_latin << "#{order_change}ay"
            end
        end
        pig_latin.join(' ')
    end

end