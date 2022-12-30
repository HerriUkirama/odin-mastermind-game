
require_relative 'display'

class Game < String
    include Display

    attr_reader :code_input

    def initialize 
        @code_input  =  nil
        @code_to_break = Array.new(4)
    end


    def play
        display_game_start
        user_choise = gets.chomp
        user_choise.to_i == 1 ? code_breaker_game : code_setter_game
    end

    def code_setter_game
        display_code_setter_input
        @code_input = gets.chomp.split(" ")
    end

    def board_breaker_test_display(code_list,red_index,white_index,blank_index)
        arr= Array.new(0)
        red_index.times do
            arr.push(COLOR_HASH[:red])
        end
        white_index.times do
            arr.push(COLOR_HASH[:white])
        end
        blank_index.times do
            arr.push(COLOR_HASH[:black])
        end
        code_coba = code_list.map do |item|
            item = "#{COLOR_HASH[item.to_sym]}"
        end
        puts "\n#{code_coba.join(" ")}" + "  |  " + "Clue : " +"#{arr.join(" ")}" 
    end

    def code_breaker_game
        @code_to_break.map! {|items| items = COLOR_LIST.sample}
        red_index=0
        for i in 0..11
            display_code_breaker_input
            code_guest = gets.chomp.split(" ")
            # puts "#{code_guest}"
            red_index = @code_to_break == code_guest ? 4 : check_match(code_guest)
            blank_index = check_exclude(code_guest)
            white_index = 4 - red_index - blank_index
            puts "Test #{i+1}:"
            board_breaker_test_display(code_guest, red_index,white_index,blank_index)
            if red_index == 4
                break
            end
        end
        if red_index == 4
            puts "You win"
        else
            puts "You Lose"
        end
    end

    def check_match(code_list)
        match_index = 0
        for i in 0..code_list.length-1
            if code_list[i] == @code_to_break[i]
                match_index += 1
            end
        end
        match_index
    end

    def check_exclude(code_list)
        reduce_val = @code_to_break.reduce(Hash.new(0)) do |result, key|
            result[key] += 1
            result
        end

        code_list.each do |item|
            if reduce_val[item] > 0
                reduce_val[item] -= 1
            end
        end

        exclude_index = reduce_val.sum {|key, value| value}
        # puts reduce_val
        exclude_index
        # puts exclude_index
    end
end