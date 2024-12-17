# 🔄♟️ Peg Reversal Game

## Project Overview

This project implements a simple single-player board game where the goal is to flip all the black pegs to white. The game is played on a board shaped like a '+' with a middle position at (0, 0). The player starts with one white peg, and they can flip black pegs to white if at least one neighboring peg is white.

This project demonstrates **functional programming principles** using **Haskell** through a classic puzzle game.

---

## 🚀 Key Features

- 🏁**Initial Board Setup**: The board starts with all pegs as black, except for one white peg. The position of the first white peg is provided by the user.
  
- ✅**Valid Move Mechanism**: A move consists of flipping a black peg to white, provided that the peg is adjacent to at least one white peg. Moves can be made up, down, left, or right (no diagonal moves).
  
- 🎯**Goal Condition**: The game is won when all pegs are turned white.

- 📋**State Representation**: The game state includes positions of pegs and their colors, moves made, and the current board configuration.

---

## 📝 Type Definitions

The following type definitions are used to represent the game state:

```haskell
type Position = (Int, Int)
data Color = W | B deriving (Eq, Show)
data Peg = Peg Position Color deriving (Eq, Show)
data Move = M Position deriving (Eq, Show)
type Board = [Peg]
data State = S Move Board deriving (Eq, Show)
