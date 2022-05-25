module Text
    def greetings
        puts <<-HEREDOC

        Hello! Welcome to the HangMan
        Rules are simple:
        1) There is a secret word
        2) You have an specific number of guesses.
        3) If you don't guess, you loose.
        HEREDOC
    end

    def whats_your_name
        puts "What is your name?"
    end

    def really_text
        puts "Really? Ufff... I'm sorry... well lets continue..."
    end


#end of module

end
