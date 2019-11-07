class HangHuman::CLI 

    def call 
        intro
        game_instructions
        get_actual_word
        show_word_encrypted
        # get_users_play
        #
    end

    def intro
        print "What is your name? "
        user_name = gets.chomp.capitalize
        user = HangHuman::User.new(user_name) 
        puts "\nHello, #{user.name}. Welcome to HangHuman."
    end

    def game_instructions
        puts "\nTo win this game, you must guess all of the correct letters of a hidden word. Once you do, the word will be revealed and you win. If you guess a wrong letter, you add a body part to the Human. If the body is fully drawn you lose."
    end

    def get_actual_word
    
    end

    def show_word_encrypted
        rand_animal = HangHuman::Scraper.new
        this_animal = rand_animal.get_rand_animal.tr(('a'..'z').to_a.join(''), '-')
        puts "\nGuess the #{this_animal.length} letter word > #{this_animal}"
    end

    def get_users_play
        while true 
            user_char = gets.chomp.to_s.downcase

        end
    end

end