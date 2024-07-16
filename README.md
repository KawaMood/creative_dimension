# **Creative Dimension V.1.2.3**

**A superflat creative dimension for survival worlds**

This data pack adds a superflat creative dimension, that can be safely used in survival worlds.

# ⚠️ This data pack is now outdated

**This version of the data pack is for MC 1.20 to 1.20.2.**  
If you're using a more recent of Minecraft, check other branches of the project, or the main one to get the most update version this data pack is available on. 

Note that these versions don't contain all features most recent ones do, and aren't supported anymore.
If you're about to use them on a modified version of Minecraft (with plugins or mods), the data pack could not work as intended.

# 🪄Introduction
## What is Creative Dimension?

Minecraft survival players ofently want to pre-desing their buildings or ideas in creative mode before creating them in their survival world. If you own a survival server and want to collaborate on such project, it would require another server or a multiverse plugin to provide two different worlds, with splited inventories and a specific gamemode.

Creative Dimension data pack offers the ability to create portals on your survival world that can teleport players in a dedicated creative dimension. Their inventory (including ender chest one), xp, health, gamemode, and effects will be stored and they will retrieve them back when they join a vanilla dimension back. Thus, you can finally test your ideas together and play in survival mode on a vanilla server.

_Of course, you can also use this data pack in single player._

## Installing details

⚠️ Disclaimer: It is important to not that this data pack use worldgen features, that are still considered as **experimental** by Mojang. Installing it is easy, but removing it is harder. Check the "Uninstall" section further for more information.

After having placed the data pack in the `/datapacks` folder of your world, you would need to **restart** the server (or world in single player) completly. As it involves worldgen features, a single `/reload` won't be enough to install it correctly.

## How to join the Creative Dimension?

After you installed the data pack, you will need to create a portal following this structure scheme with 8 **amethysts blocks**, 2 **lodestones** and 1 **starter plant** among: oak sapling, dark oak sapling, birch sapling, crimson fungus or warped fungus.

![portal structure](https://mc.kawamood.com/datapacks/PK_Creative_Dimension/medias/portal_structure.png)

Be sure to place the plant in the middle as last, otherwise the structure won't trigger.
Placing it will run a short animation, after what the portal will be ready to use.
You just need to stand in the middle of it (where the **light block** is), and the portal will teleport your to the creative dimension.

## How to exit the creative dimension? 

In order to return to reality, you will need to consume a **slow falling** potion. You can also splash one on yourself. The goal is just to get the effect.  
After some seconds, you will be teleported back to the vanilla dimension. 

## How to customize or disable a portal?

Creative portals actually have a single block's that matters: the light block, in the middle of them. You can alter all blocks around it if you want to customize the design of the portal, till you don't touch to this block.

Removing this light block will disable the relative portal. You can then remove the rest of the structure, and it will be like it has never existed.

# 🧹 Uninstall

As Creative Dimension involves worldgen, it is quite technical to uninstall it properly. If you're not confident with the following process, you can join the [Discord server](https://discord.com/invite/w8s9XWgN6v) and ask for support with uninstallation on your world.

First, be sure that no player currently are or previously leaved the server while being in the creative dimension.

Run this command to remove scores and references of Creative Dimension data pack.
```
/function pk_cr_di:base/uninstall
```
Then, remove the data pack from the `/datapacks` folder of your world.

If you stop the unsintalling process at this step, then the dimension would still exists, but couldn't be joined anymore. If the goal is just to temporary remove the data pack to update your world on a version that data pack doesn't handle yet, then you can stop at this step for the moment, it will be enough.

If you wish to remove it completely from your world, here is the difficult part:  
In order to remove the content properly, you need to go (from the root of your world) in the `/dimensions` folder and remove the folder `pk_cr_di`.

But Minecraft will still keeps the dimension references in the `level.dat` file of your world. 
So you will need to use [NBTExplorer](https://github.com/jaquadro/NBTExplorer) to remove each pk_cr_di:creative_superflat occurences from the `level.dat` file.

I know this is quite technical, but sadly, worldgen is still considered as an experimental feature, and Mojang didn't provide a way to more directly get rid of unused dimensions yet.

# 🪠 Report an issue

If you encountered an issue with this data pack, preferably join the [Discord server](https://discord.com/invite/w8s9XWgN6v), and open a post in the dedicated **#data-pack-issues** channel to describe your problem. Please, don't forget to provide all necessary informations including:
- The Minecraft version you're using.
- The version of the concerned data pack you're using.
- If you're using any modified version like Forge, Paper or Spigot.
- If you do, the plugins or mods you're using that may alter the functioning of data packs.
- The list of other data packs you're using, if you have others.
- A clear description of your issue, and a way to reproduce it.
- If necessary, a video or a screenshot of the issue in game.

# 📌 Other links

Thank you for using Creative Dimension! It makes me happy to know people are enjoying it.
If you want to support its development and the development of other data packs, you can support me on my other social networks: 

- [Youtube](https://www.youtube.com/@KawaMood/)
- [Planet Minecraft](https://www.planetminecraft.com/member/kawamood/)
- Or if you're in a generous mood, I accept donation on [paypal](https://paypal.me/KawaMood) or [buy me a kawa](https://www.buymeacoffee.com/kawamood) (slang term for "coffee")!
