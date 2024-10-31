# frozen_string_literal: true

require_relative 'lib/game'
require_relative 'lib/display'
require_relative 'lib/human_solver'
require_relative 'lib/computer_solver'
require_relative 'lib/game_logic'
require_relative 'lib/text_content'
require_relative 'lib/text_instructions'

Game.new.play
