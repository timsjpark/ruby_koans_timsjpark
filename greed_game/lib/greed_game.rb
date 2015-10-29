require './dice'

# Greed game class
class GreedGame
  attr_reader :players, :scoresheet

  def initialize
    @players = []
    @scoresheet = {}
  end

  def add_player(*args)
    @players.push(*args)
    @players.each do |player|
      @scoresheet[player] = 0
    end
  end

  private

  # Error thrown for insufficient players in game
  class InsufficientPlayersError < Exception
    def message
      'You must start the game with at least 2 players!'
    end
  end
end
