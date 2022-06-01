#Player Class

class Player
    attr_reader :name
    def initialize(name)
        @name=name
    end

    def create_player
        whats_your_name_text
        name=gets.chomp
        player=Player.new(name)
    end

end

#Game Class

class Game
    attr_accessor :word, :dictionary, :rounds_left, :human_guesses_good, :display
    attr_reader :file
    include Text
    def initialize
        @word = []
        @rounds_left = 0
        @human_guesses_good = []
        @display[]
        @dictionary=[]
        @file = File.open("../repos/HangMan/10000_english_words.txt",chomp: true)
    end

    def filling_the_dictionary
        @file.each do |word|
            number= word.length
            if number.between?(6,12)
                @dictionary.push(word.gsub!("\n",""))
            end
        end
    end

    def random_num
        number = (rand * @dictionary.length).to_i
    end

    def choosing_the_word
        @word = @dictionary[random_num].split("")
    end

    def human_guesses(letter)
        if @word.includes?(letter)
            @human_guesses_good.push(letter)
        elsif letter==Integer || letter == Float
            puts "That is NOT a letter, please refrase"
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

    def victoria
        @display.eql?(@word)
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

    def saving_the_game
        

#compound Methods

def input_answer
    answer_text
    answer = gets.chomp.downcase
    if answer == "save"
        #save the game
    elsif answer.length == 1
        human_guesses(answer)
    end
end

def turns
    until defeat
    input_answer
    display_goods_and_bads
    update_rounds
    break if victoria
    end
    final_text_method
end

def game_prep 
    create_player
    really_text
    greetings
    filling_the_dictionary
    choosing_the_word
    rounds_left_method
    pushing_nils_for_view
end
