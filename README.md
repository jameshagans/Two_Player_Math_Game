# Details

Both [players] start with 3 [lives]. They lose a life if they mis-answer a [question]. At the end of every [turn], the [game] should output the new [scores] for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Extracted Nouns for Classes 
* players 
* questions
* game 

## Player Class
* player initiated (state)
* player loses life (method)

## Question Class
* question initiated (state)
* question verified (method)
* question generated (method)

## Game Class
* game initialized (state)
* game plays (method)
* game switches players turn (method)
* game displays score (method) 
* game over (state)