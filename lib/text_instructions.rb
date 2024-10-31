# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize

# Instructions module
module TextInstructions
  def instructions
    <<~HEREDOC


      #{formatting('underline', 'How to play Mastermind:')}

      This is a one-player game against the computer.
      You can choose to be the code #{formatting('underline', 'maker')} or the code #{formatting('underline', 'breaker')}.

      There are six different color/number combinations:

      #{code_colors('1')}#{code_colors('2')}#{code_colors('3')}#{code_colors('4')}#{code_colors('5')}#{code_colors('6')}


      The code maker will choose four to create a 'master code'. For example,

      #{code_colors('4')}#{code_colors('3')}#{code_colors('6')}#{code_colors('6')}

      As you can see, there can be #{formatting('red', 'more than one')} of the same number/color.
      In order to win, the code breaker needs to guess the 'master code' in 12 turns or fewer.


      #{formatting('underline', 'Clues:')}
      After each guess, there will be up to four clues to help crack the code.

        #{clue_colors('*')}This clue means you have 1 correct number in the correct location.

        #{clue_colors('?')}This clue means you have 1 correct number in the wrong location.


      #{formatting('underline', 'Clue Example:')}
      To continue the example, using the above 'master code,' a guess of '6146' would produce 3 clues:

      #{code_colors('6')}#{code_colors('1')}#{code_colors('4')}#{code_colors('6')}  Clues: #{clue_colors('*')}#{clue_colors('?')}#{clue_colors('?')}


      The guess had 1 correct number in the right position and 2 correct numbers in the wrong positions

       #{formatting('underline', "It's time to play!")}
       Would you like to be the code #{formatting('blue', 'maker')}or the code #{formatting('yellow', 'breaker')}?

       Press '1' to be the code #{formatting('blue', 'maker')}
       Press '2' to be the code #{formatting('yellow', 'breaker')}
    HEREDOC
  end
end

# rubocop:enable Metrics/AbcSize
