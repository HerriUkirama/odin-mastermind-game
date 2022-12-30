module Display

    COLOR_LIST = ['red', 'blue', 'green', 'purple', 'yellow', 'cyan']
    COLOR_HASH = {
        black:      "\e[40m    \e[0m",
        red:        "\e[41m    \e[0m",
        green:      "\e[42m    \e[0m",
        yellow:     "\e[43m    \e[0m",
        blue:       "\e[44m    \e[0m",
        purple:     "\e[45m    \e[0m",
        cyan:       "\e[46m    \e[0m",
        white:      "\e[47m    \e[0m",
    }
    def display_game_start
        puts "\n
        :----------------------------------:
        :----------------------------------:
        :----Welcome to Mastermind Game----:
        :----------------------------------:
        :----------------------------------:
        \n"

        puts "Mastermind is a code-breaking game for two player, which is:"
        # puts "  -The code "+"Breaker".bold_purple
        puts " -The code "+"Breaker".bold_purple
        puts " -The code "+"Setter".bold_purple
        puts "\n\n\n"
        puts "The code "+"Setter".bold_purple+" is the person who makes the code which will be broken by the code breaker where the code consists of 4 color sequences, the colors used in this mastermind consist of 4 colors, namely :"
        puts " -"+"Red".text_red+", "+"Purple".text_purple+", "+"Green".text_green+", "+"Blue".text_blue+", "+"Yellow".text_yellow+", "+"Cyan".text_cyan
        puts "\n"
        puts "The code "+"Breaker".bold_purple+" tries to guess the pattern, in both order and color, within eight to twelve turns. Each guess is made by placing a row of code pegs on the decoding board. Once placed, the codemaker provides feedback by placing from zero to four key pegs in the small holes of the row with the guess. A colored or "+"red".text_bold_red+" key peg is placed for each code peg from the guess which is correct in both color and position. A "+"white".text_bold_white+" key peg indicates the existence of a correct color code peg placed in the wrong position."
        
        puts "\n"

        # Board display example
        puts "Board Example:"
        puts "#{COLOR_HASH[:red]} #{COLOR_HASH[:blue]} #{COLOR_HASH[:green]} #{COLOR_HASH[:purple]}" + "  |  " + "Clue : " + "#{COLOR_HASH[:red]} #{COLOR_HASH[:white]} #{COLOR_HASH[:white]} #{COLOR_HASH[:black]}"
        puts "\n\n"

        puts "Let's Play\n".text_bold_white
        puts "Press '1' if u want to be a code Breaker"
        puts "Press '2' if u want to be a code Setter"
    end

    def display_code_setter_input
        puts "\n\nPlease put 4 color code, ex: red blue green white"
    end
    def display_code_breaker_input
        puts "\n\nPlease put 4 color code to guest the code, ex: red blue green white"
    end
end