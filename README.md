# CardWorkoutApp

The **CardWorkoutApp** is a fun, simple iOS application designed to display random playing cards every 0.05 seconds, creating an engaging, fast-paced visual experience. This project demonstrates the use of timers, random image selection, and button control for a card game-style interface.

## Features

- **Random Card Selection**: Cards are randomly displayed from a standard 52-card deck.
- **Control Buttons**:
  - **Stop**: Stops the timer, pausing the card rotation.
  - **Restart**: Resets and restarts the timer to continue random card display.
  - **Rules**: Intended for adding game rules or instructions for the user.
- **Smooth UI**: Buttons have rounded corners for a refined appearance.

## Code Overview

### `CardSelectionVC.swift`

The main view controller for handling the random card display and button interactions:

- **Properties**:
  - `cardImageView`: Displays the current card.
  - `buttons`: Outlet collection to customize button appearances.
  - `timer`: A timer for the continuous random card display.
  - `cards`: An array holding the card images.

- **Functions**:
  - `viewDidLoad()`: Sets up button styles and starts the timer.
  - `startTimer()`: Starts a timer that calls `showRandomImage()` every 0.05 seconds.
  - `showRandomImage()`: Randomly selects a card from the deck and displays it.
  - **Button Actions**:
    - `stopButtonTapped()`: Stops the timer.
    - `restartButtonTapped()`: Restarts the timer after invalidating the previous one.
    - `rulesButtonTapped()`: Placeholder for displaying the rules (functionality can be expanded).

### `Card.swift`

A `Card` struct that holds an array of `UIImage` objects representing each card in a 52-card deck.

## Requirements

- **iOS 13.0** or later
- **Xcode 12** or later

## Installation

Clone the repository:

```bash
git clone https://github.com/your-username/CardWorkoutApp.git
