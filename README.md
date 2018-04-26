# Synthesis -- The Synthetic Board Game

We live in a world where proteins are all around us. Life is teeming with possibilities, and we have become magical machines that can manipulate chemistry and physics with atomic precision.

But what if you had nothing to work with? What if you had to start from scratch? Do you have what it takes to build the world?

## Synopsis

Synthesis is an abstract board game with the goal of creating the spark of life. The world starts off almost completely empty, with a scattering of basic chemicals. Chemicals can increase in complexity, and be combined together to create peptides. Peptides can be combined together to create proteins.

And proteins...? Proteins make synthesis easier. Proteins give you power. Proteins are, quite literally, a game changer.

## Ingredients

You will need:

* A *synthesis* game board made from a hexagonal grid. An A4-printable hexagonal hex board in two pieces can be found [here](synthesis_board.pdf).
* A set of protein cards. An example card set can be found [here](synthesis_cards.pdf).
* Chemical counters of increasing complexity (called 1,2,3,4), at least 10 of each
* Peptides of different shapes or colours (called 2,3,5,7), at least 6 of each. Small coloured cubes are an appropriate size.
* Reaction site markers labelled 1-6, one set for each player.
* Four reaction site spaces in front of each player.
* A power (score) track with one counter per person (or pen and paper).

## Game Setup

1. Assemble the game board by joining the two sides together at their longest edge
2. Drop three [**1**] chemicals and three [**2**] chemicals for each player onto the centre of the board from a height of 30cm, and place them in the centre of the nearest hex. If they end up outside the board area, place them on the nearest hex on the edge of the board.
3. Place the power counters on position 1 -- everyone starts with 1 power, use it wisely!
4. Shuffle the protein cards and deal ***four*** out beside the game board.
5. Place one "Spark of life" card for each player beside the game board.
4. The person who last ate soup starts the game.

## Game Play

Each player, in turn, carries out ***four*** of the following actions. The same action may be 
repeated more than once:

 * Place the lowest complexity chemical [**1**] in a blank space on the board.
 * Increase the complexity of a chemical on the board.
 * Move a chemical one hex space.
 * Convert all chemicals on a hex space into a peptide.
 * Move a peptide one hex space.
 * Use power to create a reaction surface, starting with an existing peptide.
 * Extend a reaction surface with the next peptide in the chain.
 * Break up a protein into its component peptides.
 * Use the power on a protein card. See section "Proteins" below.
 
The game ends one round after the first person completes a "Spark of Life" protein. The winner of the game is the person who has the most power at the end of the game.

## Proteins

*"What you must learn is that these rules are no different than the rules of a computer system...some of them can be bent. Others... can be broken."* - Morpheus, The Matrix

Proteins give *Synthesis* its life, and a complexity that increases as the game progresses. The rules of the game can be changed by proteins.

Use proteins wisely: most proteins require one action to use, and will be broken up by their use. In this case, a protein is broken up as in the "Break up" action (see [Breaking up proteins](#breaking-up-proteins)).

Some proteins are catalytic enzymes and are not broken up by use; these are indicated by a **C** on the card. Some proteins do not use up any action points when they are used; these are indicated by a **0** on the card. Some proteins are *destroyed* by use, returning all component peptides to the stock (not to the game board, as is usual) and discarding the card; these are indicated by a **D** on the card.

Feel free to suggest other protein powers [here](https://github.com/gringer/synthesis/issues), and they will probably be added to the example card set. Please also report an issue if a protein feels overpowered or underpowered; the design allows for tweaks to be easily made to adjust how easy or hard it is to create a protein.
 
## Notes

### Increasing complexity

The numerical value of the chemical is increased (i.e. [**1**]->[**2**], [**2**]->[**3**], [**3**]->[**4**]). Chemical complexity cannot be increased beyond [**4**]

### Moving objects

Chemicals and peptides can be moved to occupy the same space as other board objects. Reaction sites cannot be moved.

### Converting chemicals into peptides

Convert *all* chemicals on one hex space into a peptide by adding up the complexity of the chemicals. If the complexity of all chemicals on a hex space does not add up to the peptide number, then no peptide can be created.

### Creating reaction surfaces

Create a reaction surface by taking a protein card from the stack and placing it in an empty reaction space, then deducting the card cost from the power track. Card cost depends on the number of peptides in the protein:

* 2 peptides -- 1 power
* 3 peptides -- 3 power
* 4 peptides -- 7 power

Place the reaction site marker corresponding to the reaction space on a non-reactive place on the board that contains the first peptide in the chain. Transfer the peptide onto the reaction surface (card) in the corresponding place on the card.

If there are no peptides on the board that match the first peptide in the chain, then the card cannot be taken. If there is not enough power to pay the card cost, the card cannot be taken. If no spaces for reactions are available in front of the player (each player has ***four***), no more reaction surfaces can be created. Fill the protein display back up to ***four*** cards (not including the "Spark of Life" cards). If there are no available cards, shuffle the discard pile and create a new protein stack.

### Extending peptides

When extending peptides on a reaction surface, the peptide is moved from the game board onto the reaction surface, and cannot be moved by any players. Peptides must be extended in the order indicated on the reaction surface card. As soon as a protein is complete (i.e. all the available peptide positions are filled), power is added to the player's power track according to the length of the protein:

 * 2 peptides -- 2 power
 * 3 peptides -- 5 power
 * 4 peptides -- 10 power
 
### Breaking up proteins
 
When a protein is broken up, the protein reaction surface is placed in a discard pile next to the card stack. The peptides are moved back to the hex space marked by the reaction site marker, and the marker is returned to the player. The power cost of the protein is *not* refunded. The protein effect is *not* activated (unless a completed protein has been otherwise activated).

### Spark of Life

A "Spark of Life" card may be purchased at any time, and is placed on a reaction surface in the same fashion as other proteins. Each player may only have one "Spark of Life" card at any one time. Once one person completes a "Spark of Life" card (and obtains the associated amount of power), all other players get one more turn, then the game ends.