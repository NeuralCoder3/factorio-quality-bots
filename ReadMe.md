# Quality Bots

This mod increases the cargo capacity/size of construction and logistic roboter in Factorio with their quality.

The amount is adjustable in the startup settings (default is quality-level halved).

The cargo capacity of default vanilla bots is:
- ![](https://wiki.factorio.com/images/thumb/Quality_normal.png/12px-Quality_normal.png) 1 (normal)
- ![](https://wiki.factorio.com/images/thumb/Quality_uncommon.png/12px-Quality_uncommon.png) 2 (uncommon)
- ![](https://wiki.factorio.com/images/thumb/Quality_rare.png/12px-Quality_rare.png) 2 (rare)
- ![](https://wiki.factorio.com/images/thumb/Quality_epic.png/12px-Quality_epic.png) 3 (epic)
- ![](https://wiki.factorio.com/images/thumb/Quality_legendary.png/12px-Quality_legendary.png) 4 (legendary)

Mod-Portal: [Bot Cargo Quality](https://mods.factorio.com/mod/bot-cargo-quality)

## Working principle

For each quality level in the game, a new bot entity (one for logistic, one for cargo) is created with all the same properties as the original bot, but with a different payload size (the internal name for cargo capacity/size).

If a bot is placed in the world, the mod will replace it with the corresponding quality bot.