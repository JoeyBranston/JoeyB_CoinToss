 .--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--. 
/ .. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \
\ \/\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ \/ /
 \/ /`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'\/ / 
 / /\                                                                                                                                        / /\ 
/ /\ \      ██╗ ██████╗ ███████╗██╗   ██╗    ██████╗                   ██████╗ ██████╗ ██╗███╗   ██╗    ████████╗ ██████╗ ███████╗███████╗  / /\ \
\ \/ /      ██║██╔═══██╗██╔════╝╚██╗ ██╔╝    ██╔══██╗                 ██╔════╝██╔═══██╗██║████╗  ██║    ╚══██╔══╝██╔═══██╗██╔════╝██╔════╝  \ \/ /
 \/ /       ██║██║   ██║█████╗   ╚████╔╝     ██████╔╝       █████╗    ██║     ██║   ██║██║██╔██╗ ██║       ██║   ██║   ██║███████╗███████╗   \/ / 
 / /\  ██   ██║██║   ██║██╔══╝    ╚██╔╝      ██╔══██╗       ╚════╝    ██║     ██║   ██║██║██║╚██╗██║       ██║   ██║   ██║╚════██║╚════██║   / /\ 
/ /\ \ ╚█████╔╝╚██████╔╝███████╗   ██║       ██████╔╝██╗              ╚██████╗╚██████╔╝██║██║ ╚████║       ██║   ╚██████╔╝███████║███████║  / /\ \
\ \/ /  ╚════╝  ╚═════╝ ╚══════╝   ╚═╝       ╚═════╝ ╚═╝               ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝       ╚═╝    ╚═════╝ ╚══════╝╚══════╝  \ \/ /
 \/ /                                                                                                                                        \/ / 
 / /\.--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--..--./ /\ 
/ /\ \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \.. \/\ \
\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `'\ `' /
 `--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--'`--' 
 

## [Preview](https://streamable.com/0bp3s5)

## Credits
- **Created by:** Joey Branston
- **Version:** 1.0.0

## Description
This is a **QBCore** script that allows players to toss a coin using an item. When the item is used, a coin toss animation will play with a custom sound and the result (heads or tails) will be displayed in the chat box.

## Features
- Made for the **QBCore framework**.
- Requires the player to have the in-game **coin** item to trigger the toss.
- Uses **qb-progressbar** during the animation.
- Plays a **custom sound** when flipping the coin.
- Displays the result **in chat with the character's name**.

## Dependencies
- [QBCore Framework](https://github.com/qbcore-framework)
- [Interact-Sound](https://github.com/qbcore-framework/interact-sound)

## Installation
1. Unzip and place the `joeyb_cointoss` folder in your `resources` directory.
2. Place the `coin.png` file from the `Other Files` folder into your `/qb/qb-inventory/html/images` directory.
3. Place the `coin_flip.ogg` file from the `Other Files` folder into your `/interact-sound/client/html/sounds` directory.
4. Add the following line to your `/qb/qb-core/shared/items.lua` file:
```
    coin = { name = 'coin',	label = 'Coin', weight = 0, type = 'item', image = 'coin.png', unique = false, useable = true, shouldClose = true, description = 'A singular quarter. Use it to do a coin toss for fun or make bets on it!' },
```
5. Decide how players should **obtain the coin** and implement it accordingly (Whether through `qb-shops` or another resource).
6. Add `ensure joeyb_cointoss` to your `server.cfg` and restart your server.

## Usage
- To flip a coin: Open your inventory and use the `coin` item or alternatively, place the item in your hotbar and use the slot's keybind.
- The coin flip will trigger a progress bar, animation, and a sound effect.
- After a few seconds, the result will appear in the chat: `John Doe tossed a coin. Result: Heads`.

## License
This project is licensed under the **MIT License**. Feel free to modify and distribute it, provided that credit is given for the original.
