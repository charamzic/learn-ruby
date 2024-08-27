class Hangman
  def initialize(word)
    @word = word
    @hidden_word = "_" * word.length
    @attempts = 5
    @guessed_letters = []
  end

  def print_hidden_word
    puts @hidden_word
  end

  def print_attempts
    @attempts.times do
          print "❤️ "
        end
        puts ""
  end

  def print_guessed_letters
    puts "Guessed letters: #{@guessed_letters.join(", ")}"
  end

  def guess(letter)
    if @guessed_letters.include?(letter)
      puts "You already guessed that letter!"
      return
    end

    if @word.include?(letter)
      update_hidden_word(letter)
    else
      @attempts -= 1
    end

    @guessed_letters << letter
  end

  def update_hidden_word(letter)
    @word.split("").each_with_index do |char, index|
      @hidden_word[index] = letter if char == letter
    end
  end

  def game_over?
    @attempts <= 0 || @hidden_word == @word
  end

  def win?
    @hidden_word == @word
  end
end

puts "Welcome to Hangman!"
puts "Player 1, enter a word:"
word = gets.chomp.downcase
system "clear"
game = Hangman.new(word)

until game.game_over?
  puts "\n\n"
  game.print_hidden_word
  game.print_attempts
  game.print_guessed_letters

  puts "Player 2, guess a letter:"
  letter = gets.chomp.downcase
  game.guess(letter)
end

if game.win?
  puts "Congratulations! You guessed the word: #{word}"
else
  puts "Out of lifes! The word was: #{word}"
end
