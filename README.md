# Tic-Tac-Toe
You Must have played "X-0" on paper with your friend. But here I have a cool way so that you can play it on a FPGA. The game is coded using Verilog HDL.

## Modules
For making the game there are different modules which we need and they are initiated in the main tic_tac_toe.v file. Modules are-:
* **No Space Detector-** It basically detects whether all the 9 positions are filled or not. If all of them are filled it send a signal to control unit and the game goes to Game Over state.
* **Position Register-** It basically turn on the LED corresponding to the player whose turn it is and the position selected.
* **Position Decoder-** It enables a particular position which is fed into input by the player.
* **Control Unit-** Made using Moore Machine. Controls all the required signals for state changes. Following is the State diagram of the FSM of Control Unit.
![FSM](https://user-images.githubusercontent.com/46645257/89535666-5974e500-d814-11ea-8a5b-fb3c23eb4c4f.png)
It has 4 states, 2 output signals namely PLAYX_EN, PLAY0_EN, and controlled using input signals NOSPACE,WIN,PLAY.
