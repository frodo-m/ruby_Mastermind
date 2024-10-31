# frozen_string_literal: true

# rubocop:disable Layout/LineLength

# module for in-game text
module TextContent
  def formatting(description, string)
    {
      'underline' => "\e[4;1m#{string}\e[0m ",
      'red' => "\e[31;1m#{string}\e[0m ",
      'green' => "\e[32;5m#{string}\e[0m ",
      'yellow' => "\e[33;3m#{string}\e[0m ",
      'blue' => "\e[34;1m#{string}\e[0m "
    }[description]
  end

  def game_message(message)
    {
      'human_won' => formatting('green', "  You broke the code! Congratulations, you win! \n\n").to_s,
      'display_code' => "Here is the 'master code' that you were trying to break:",
      'computer_lost' => formatting('green', "\nYou out-smarted the computer!").to_s,
      'replay_prompt' => formatting('blue', "\n\nDo you want to play again? Press 'y' or any key to quit").to_s,
      'thanks' => formatting('green', 'Hope you had fun playing Mastermind!').to_s
    }[message]
  end

  def computer_won_message(message)
    {
      'inconceivable' => "\nInconceivable! Either your code only had 1-2 different numbers or the computer's randomized numbers just happened to be in a perfect order.",
      'won' => formatting('red', "\nGame over. The computer broke your code!").to_s,
      'close' => formatting('yellow', "\nThat was close, but the computer finally broke your code.").to_s
    }[message]
  end

  def turn_message(message, number = nil)
    {
      'guess_prompt' => formatting('blue', "Turn ##{number}: Type in for numbers (1-6) to guess code, or 'q' to quit game.").to_s,
      'computer' => "\nComputer Turn ##{number}:",
      'breaker_start' => "The computer has set the 'master code' and now it's your time to break it.\n\n",
      'code_prompt' => "Please enter a 4-digit 'master code' for the computer to break.",
      'code_displayed' => "is your 'master code'.\n"
    }[message]
  end

  def warning_message(message)
    {
      'answer_error' => formatting('red', "Enter '1' to be the code MAKER or '2' to be the code BREAKER.").to_s,
      'turn_error' => formatting('red', 'Your guess should only be 4 digits between 1-6').to_s,
      'last_turn' => formatting('red', 'Choose carefully. This is your last change to win!').to_s,
      'code_error' => formatting('red', "Your 'master code' must be 4 digits long, using number between 1-6.").to_s,
      'game_over' => "#{formatting('red', 'GAME OVER. That was a hard code to break! ¯\\_(ツ)_/¯ ')} \n\n"
    }[message]
  end
end
