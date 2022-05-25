#Player Class

class Player
    attr_accessor :guesses_left
    attr_reader :name
    def initialize(name)
        @name=name
    end
end

#Game Class

class Game
    attr_accessor :word, :rounds_left, :human_guesses
    def initialize
        @word = []
        @rounds_left = 0
        @human_guesses = []
    end

    words = File.open("../repos/HangMan/10000_english_words.txt","r")

    def human_guesses(letter)
        @human_guesses.push(letter)
    end

    def rounds_left_method
        @rounds_left = (@word.length * 1.5).to_i
    end

    def pushing_nils_for_view
        num = @word.length
        num.times do
            @human_guesses.push(nil)
        end
        puts @human_guesses
    end

    def count_letters(letter)
        number= @word.count(letter)
        if 0 < number
            number.times do
                human_guesses(letter)
            end
        end
    end


