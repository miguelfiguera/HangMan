module Text
  def greetings
    puts <<-HEREDOC

        Welcome to the HangMan
        Rules are simple:
        1) There is a secret word
        2) You have an specific number of guesses.
        3) If you don't guess, you loose.
        4) Only one letter at a time.

        Good luck, my friend.

    HEREDOC
  end

  def whats_your_name_text
    puts 'What is your name?'
  end

  def really_text
    puts "Really? Ufff...what a name..."
    puts " I'm sorry... well lets continue..."
  end

  # method's text
  def answer_text
    puts "Please choose a letter or write 'save' to save your game"
  end

  def load_game_text
    puts 'Good day'
    puts 'Do you wish to load a previous game? Y/N'
  end

  def final_text_method
    if victoria
      puts 'Well done, lad!'
    elsif defeat
      puts 'DUDE, THAT MAN DIED BECAUSE OF YOU!... SHAME ON YOU!'
      puts "The word was #{@word.join("")}."
    end
  end
  # end of module
end
