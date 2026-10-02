# Pokémon Red and Blue [![Build Status][ci-badge]][ci]

This is a disassembly of Pokémon Red and Blue.

Credits:
Battle engine changes
Attack after waking up from sleep: Jojobear13, Xillicis, Chatot4444, lotsobs
Poison, burn, and leech seed does 1/8th damage: Xillicis, Chatot4444, Rangi42
Remove 25% chance for enemy stat down moves to miss: Xillicis
Implement move priority system: Xillicis

Upgrades to existing features
Free some space in the Home BANK: Vortiene
Free MORE some space in the Home BANK: Rangi42
Add Item Sorting In Bag: devolov
Push B in Wild Battle Moves to Run: devolov
Increase the total amount of money that can be won from trainer battles: mattcit
Adding hard mode: Hentenmon and thoth-33
Infinite TMs: Vortiene 
Allow to fly to any map and from any map: RainbowMetalPidgeon, kagnusdev

Features from different generations
Running Shoes: JustRegularLuna
Physical/Special Split: SwimmingLink, JHGPokemon, Xillicis
Move Deleter & Move Relearner: Mateo, jojobear13, ShiraTheMogul
Hyper Training: ShiraTheMogul, VimesCarrot, lotsobs
Already Caught Icon on Battle HUD: dannye, ZetaPx
Portable PC in the START menu: RainbowMetalPidgeon, CreamElDudJafar
Allow multiple moves to be learned at the same level: kagnusdev
In-battle EXP bar: DannyE33
Gen 7+ critical hit chance mechanic: mirko93s
Enemy Pokémon use PP: Porygondolier, LegitmateKeeper
Quantity Menus: Add or Subtract 10 with Left and Right Buttons: Porygondolier, kagnusdev
Use Cut, Surf, and Strength from the Overworld: lotsobs

Removing features
Remove stat EXP: Hentenmon

Miscellaneous
Adding Gym Leader Rematches: Hentenmon, Fotomac, thoth-33, Brunhardt


It builds the following ROMs:

- Pokemon Red (UE) [S][!].gb `sha1: ea9bcae617fdf159b045185467ae58b2e4a48b9a`
- Pokemon Blue (UE) [S][!].gb `sha1: d7037c83e1ae5b39bde3c30787637ba1d4c48ce2`
- BLUEMONS.GB (debug build) `sha1: 5b1456177671b79b263c614ea0e7cc9ac542e9c4`
- dmgapae0.e69.patch `sha1: 0fb5f743696adfe1dbb2e062111f08f9bc5a293a`
- dmgapee0.e68.patch `sha1: ed4be94dc29c64271942c87f2157bca9ca1019c7`

To set up the repository, see [**INSTALL.md**](INSTALL.md).


## See also

- [**Wiki**][wiki] (includes [tutorials][tutorials])
- [**Symbols**][symbols]
- [**Tools**][tools]

You can find us on [Discord (pret, #pokered)](https://discord.gg/d5dubZ3).

For other pret projects, see [pret.github.io](https://pret.github.io/).

[wiki]: https://github.com/pret/pokered/wiki
[tutorials]: https://github.com/pret/pokered/wiki/Tutorials
[symbols]: https://github.com/pret/pokered/tree/symbols
[tools]: https://github.com/pret/gb-asm-tools
[ci]: https://github.com/pret/pokered/actions
[ci-badge]: https://github.com/pret/pokered/actions/workflows/main.yml/badge.svg
