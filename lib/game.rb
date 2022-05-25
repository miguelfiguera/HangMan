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
    attr_accessor :word, :rounds_left, :human_guesses_good, :human_guesses_bad, :display
    def initialize
        @word = []
        @rounds_left = 0
        @human_guesses_good = []
        @display[]
    end

    words = File.open("../repos/HangMan/10000_english_words.txt","r")

    def human_guesses(letter)
        if @word.includes?(letter)
            @human_guesses_good.push(letter)
        else
            puts "ups... that was a wrong guess..."
    end

    def rounds_left_method
        @rounds_left = (@word.length * 1.5).to_i
    end

    def update_rounds
        @rounds_left -= 1
    end

    def defeat
        @rounds_left== 0
    end

    def pushing_nils_for_view
        num = @word.length
        num.times do
            @display.push("_")
        end
        puts @display
    end

    def display_goods_and_bads
        @display = []
        @word.each do |letter|
            if @human_guesses_good.include?(letter)
                display.push(letter)
            else
                display.push("_")
            end
        end
        puts @display
    end
        

    def count_letters(letter)
        number= @word.count(letter)
        if 0 < number
            number.times do
                display.push(letter)
            end
        end
    end

#compound Methods

def input_answer
    answer = gets.chomp.downcase
    if answer == "save"
        #save the game
    elsif answer.length == 1
        human_guesses(answer)
    end
end

def turns

end

