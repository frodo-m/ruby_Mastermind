# Mastermind Game

This is a classic Mastermind game implementation, where a player competes against the computer to break a secret code. The game allows you to either be the code maker or the code breaker, featuring colorful displays and engaging gameplay.

## Credits

Special thanks to [rlmorses99](https://github.com/rlmorses99) for their exceptional code that served as the foundation for this project. The efficiency and modularity of their code have been invaluable, providing clear structures and methods that made the development process insightful and enjoyable. Their work taught me a lot about:

- **Permutations**: Understanding how to generate and manage combinations effectively.
- **Game Logic**: Implementing rules and mechanics that enhance the gaming experience.
- **State Control**: Managing different states within the game flow seamlessly.
- **Modularity**: Creating reusable components that make the codebase cleaner and easier to maintain.

## How It Works

### File Structure

The game consists of several Ruby files, each handling specific functionalities:

- **`main.rb`**: The entry point for the game, where everything starts.
- **`lib/display.rb`**: Contains methods for styling and displaying game information.
- **`lib/game.rb`**: The main game logic and flow, including player mode selection.
- **`lib/human_solver.rb`**: Logic for the human player when they are the code breaker.
- **`lib/computer_solver.rb`**: Logic for the computer when it is set to solve the code.
- **`lib/game_logic.rb`**: Contains core game logic, including comparison methods.
- **`lib/text_content.rb`**: Manages in-game text formatting and messages.
- **`lib/text_instructions.rb`**: Provides instructions for the player on how to play the game.

### Features

- Play as either the code maker or the code breaker.
- Color-coded clues to assist players in breaking the code.
- Up to 12 turns to guess the secret code.
- Modular design for easy readability and maintainability.

## Getting Started

To run the game locally, clone the repository and run the following command in your terminal:

```bash
ruby main.rb
