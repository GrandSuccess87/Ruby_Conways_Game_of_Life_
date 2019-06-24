# Ruby_Conways_Game_of_Life

**SUMMARY**

This is a command line interface application that allows the user to view cellular automation in a two-dimensional universe.  

Conways Game of Life is a zero-player game because it actually does not require user input and is rather dependent on the initial state of the game.  As the user, you interact with the game by creating an initial configuration and observing the evolution. 

***

**GOALS**
1. Setup Continuous Integration (CI) using Travis 
2. Setup Walking Skeleton
3. Print a 15 x 15 two-dimensional grid of cells 

---

**RULES**

The universe of *Game of Life* is infinite and each cell has one of two possible states: unpopulated or populated.

Every cell interacts with its eight neighbors, which are horizontally, vertically, and diagonally adjacent. 

At each second in time, the following rules apply: 
 - Any live cell with fewer than two live neighbors dies, as if by underpopulation
 - Any live cell with two or three live neighbors lives on to the next generation
 - Any live cell with more than three live neighbors dies, as if by overpopulation
 - Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction

To read the complete overview of origins, algorithms, rules, example patterns and more please click [here](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Rules). 

___