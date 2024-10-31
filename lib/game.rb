# frozen_string_literal: true

require_relative 'display'
require_relative 'text_content'
require_relative 'text_instructions'

# main class that starts the game
class Game
  include Display
  include TextContent
  include TextInstructions

  def play
    puts instructions
    game_mode = mode_selection
    code_maker if game_mode == '1'
    code_breaker if game_mode == '2'
  end

  def mode_selection
    input = gets.chomp
    return input if input.match(/^[1-2]$/)

    puts warning_message('answer-error')
    mode_selection
  end

  def code_maker
    maker = ComputerSolver.new
    maker.computer_start
  end

  def code_breaker
    breaker = HumanSolver.new
    breaker.player_turns
  end
end
