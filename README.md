# DraftSim_v0.1A
Magic the Gathering draft simulator in PHP using JavaScript and MySQL

This is the first iteration of the Magic draft simulator that I worked on. It is designed for the Battle for Zendikar set of cards but could be adapted for use with any other set.

This code uses a separate function (boostgen.php) to generate boosters in the form of arrays of numbers that correspond to actual card numbers. These numbers are pulled from a MySQL database (btz.sql) which stores other card parameters that can be used by the computer to inform card picks during drafting.

It uses session variables to store information over the course of a draft and assigns 3 unopened generated boosters to each of the 8 players (1 human, 7 simulated). It then uses a small JavaScript interface code (session.php) to display the first booster to the human player and to feed his or her pick to the card picking portion of the program (draft.php) via Ajax.

This latter piece of code adds the card picked by the player to his or her card pool and removes it from the corresponding booster. It then makes a pick in each of the remaining 7 boosters likewise storing the picks in the card pools of respective players. The boosters are then rotated so that the human player sees the next booster less the card picked by his or her opponent on the virtual right from him of her. 

This continues until the first eight boosters are exhausted whereupon the program moves to the next round opening another set of eight boosters. It repeats the process described above but in a different direction as this would work at an actual table. The third round is identical to the first one.

As the draft progresses the picking part of the code goes through increasingly complex evaluations of the cards in each virtual player's card pool to inform the picks it makes in each booster. This mechanism is rather crude and generic but scalable and refinable.

Overall I believe that the resulting code provides a reasonable if very approximate take on what an actual draft would be like. It's not something to use as a basis for judgment of the set and related strategies but can give you enough of an idea of how actual Battle for Zendikar drafting goes not to feel overwhelmed at the table when sitting down to play the first few times.
