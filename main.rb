
require_relative 'lib/game'
require_relative 'lib/color'
require_relative 'lib/display'

def start_game
    game = Game.new
    game.play
end

start_game