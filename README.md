# **KawaMood's Waystones V.2.1.4**

**Avoid unnecessary long journeys!**

Craft and place Waystones on your points of interest.  
A survival-friendly and multiplayer-friendly way to quickly travel in your world!

# ⚠️ This data pack is now outdated

**This version of the data pack is for MC 1.20 to 1.20.1.**  
If you're using a more recent of Minecraft, check other branches of the project, or the main one to get the most update version this data pack is available on. 

Note that these versions don't contain all features most recent ones do, and aren't supported anymore.
If you're about to use them on a modified version of Minecraft (with plugins or mods), the data pack could not work as intended.

# 🪄Introduction
## What is Waystones?

Waystones is a data pack inspired by [BlayTheNinth's famous Waystones mod](https://www.curseforge.com/minecraft/mc-mods/waystones).
Waystones allow you to travel quickly from one point to another in your world, and within any dimension (including custom ones). Unlike the mod, waystones do not appear naturally within the world, they require to be crafted.

## How to craft and use a waystone?

Waystones can be crafted using:
- 1x **Lodestone**
- 2x **Amethyst Shards**
- 1x **Eye of Ender**
- and 3x base blocks

Base blocks to use depend on the desired look. You can use **Polished Andesite**, **Cut Sandstones**, **Deepslate Bricks**, or **Nether Bricks**. The recipe is the following:

![waystones recipes](https://cdn.modrinth.com/data/cached_images/e8682e04d02eb1ea39c552c50737a7b6481aac6c.gif)

Before placing your waystone, it is recommended to rename it within an **Anvil**. This will allow you to retrieve your points correspondance more easily within the waystones list.
Waystones icons in the list depends on the block they have been placed on, so you can also chose identifiable ones. These icons also handle NBT (meaning you can place a waystone on a custom player head to have custom icons).

Right-clicking the top part of a waystone will open it. The GUI shows you the list of other waystones that are visible to you on the two first lines, and a toolbar to edit the waystones attributes or navigate within pages in the bottom line.

By left-clicking on a waystone from the list, you will be teleported to it.

I recommend you to [watch the featured video](https://www.youtube.com/watch?v=wcYG_fns7LU) for better explanations and examples.

# 🔖Attributes

In the toolbar of the waystones GUI, you can see two buttons in the middle. If you're a waystone manager or the owner of the current waystone, these buttons will allow you to edit their attributes. Other players won't of course be able to edit its attributes.

Other buttons may appear on the bottom-left and bottom-right corners if you have placed many waystones in your world. They are the pagination buttons.

You can discover below the influence of each attributes.  

## Visibility

The first button concerns the waystone's visibility. There are three available values:
- By default, the waystone is set on **public**. Every players will be able to see it from the list.  
- If set on **private**, other player won't be able to see this waystone from the list. Only you (the owner) and waystones managers will be able to see it. 

## Protection

The second button concerns the waystone's protection. There are two available values:  
- By default, the **protection** is **disabled**. In this mode, the waystone can be destroyed by anyone, including natural events, like explosions from creepers or TNT.  
- If **enabled**, only the owner of the waystone and waystones managers will be able to remove it.  

# 💼 Manager Role

The **manager** role allows you to bypass most of restrictive rules introduced by waystones mechanics or settings.
It also allows you to see and edit every waystones, even private ones that you don't own.

The role can **be given** or **removed** from any player using these commands respectively:
```
/tag <nickname> add pk.waystones.manager
/tag <nickname> remove pk.waystones.manager
```
Example - Granting the manager role to the player named "Bob"
```
/tag Bob add pk.waystones.manager
```

# ⚙️Settings

<details>
<summary>Blacklisted Dimensions</summary>

This configuration requires to unzip the file.
Dimensions can be blacklisted within the predicate located in `data/pk_waystones/predicates/location/dimension/blacklisted.json`.
You can add another `location_check` entry in the `any_of` array, as it is already done for both creative dimensions references (custom dimensions of another data pack).
When done, save the file, and run a `/reload` command in game.
</details>
<details>
<summary>Display Waystones Nameplates</summary>

If enabled, floating nameplates will appear above waystones, allowing you to identify them more easily. You can **enable** or **disable** the current state of the setting using these following commands respectively:
```
/function pk_waystones:cmd/settings/name_visibility/show
/function pk_waystones:cmd/settings/name_visibility/hide
```  
Render of nameplates in game:  
![display nameplates](https://cdn.modrinth.com/data/cached_images/62d1f3bda0c3bc53160355a13827f14e29ec31a5.jpeg)
</details>
<details>
<summary>Ignore Monsters Nearby</summary>

If the relative score is set on 1, it **ignores** monsters being around the waystones. If set on 0, it prevents players to use a waystone if there are monsters nearby. It is the same principle as the beds use-prevention system. Note that this setting is **enabled** by default (monsters are ignored).
You can **enable** or **disable** the current state of the setting using these following commands respectively:
```
/scoreboard players set $pk.waystones.settings.ignore_monsters pk.value 1
/scoreboard players set $pk.waystones.settings.ignore_monsters pk.value 0
```
</details>
<details>
<summary>Legacy Textures</summary>

If enabled, the data pack will use regular **blocks textures** for waystones instead of the custom ones.
It can be useful if you're using high-resolution resources packs. You can **enable** or **disable** the current state of the setting using these following commands respectively:
```
/scoreboard players set $pk.waystones.settings.legacy_textures pk.value 1
/scoreboard players set $pk.waystones.settings.legacy_textures pk.value 0
```  
Render of textures in game:  
![legacy textures](https://cdn.modrinth.com/data/cached_images/048e648a435ebf225ce36d2fb7c4f5db24530456.jpeg)
</details>
<details>
<summary>Limit Waystones Per Player/Server</summary>

You can chose how many waystones **players** can own at most. This amount is relative to each player, meaning if you set it to 5, every players will be able to place 5 waystones each. It can be done using the following command, where "**<count>**" waits for the desired amount of waystones:
```
/scoreboard players set $pk.waystones.settings.limit_per_player pk.value <count>
```
_Example - Allow players to own a maximal amount of 5 waystones each_
```
/scoreboard players set $pk.waystones.settings.limit_per_player pk.value 5
```
You can also **disable** this setting by using the following command, meaning players will be able to place as many waystones as they want:
```
/scoreboard players reset $pk.waystones.settings.limit_per_player
```

Additionnally, you can also limit the amount of waystone your **server** can contain. This is the exact same principle as above, but instead of being a limit per player, it is a global limit. The commands follow the same scheme to **set** or **disable** this amount  respectively:
```
/scoreboard players set $pk.waystones.settings.limit_per_server pk.value <count>
/scoreboard players reset $pk.waystones.settings.limit_per_server
```
You can also combine both settings if you want to set a limit per player but also a global limit on the server.
</details>
<details>
<summary>Permission: Change "Visibility" Attribute</summary>

This permission allows you to restrict players from changing the **visibility** attribute of their own waystones. Note that managers are immune to this effect and will always be able to change any attributes from any waystone. By default, players are allowed to set any visibility to their waystone.

In order to **allow** or **disallow** players to change the waystones **visibility** using the following commands respectively:
```
/function pk_waystones:cmd/settings/change_visibility/allow
/function pk_waystones:cmd/settings/change_visibility/disallow
```
</details>
<details>
<summary>Permission: Change "Protection" Attribute</summary>

This permission allows you to restrict players from changing the **protection** attribute of their own waystones. Note that managers are immune to this effect and will always be able to change any attributes from any waystone. By default, players are allowed to change the protection of their waystone.

In order to **allow** or **disallow** players to change the waystones **protection** using the following commands respectively:
```
/function pk_waystones:cmd/settings/change_protection/allow
/function pk_waystones:cmd/settings/change_protection/disallow
```
</details>
<details>
<summary>Tp with your vehicle and leashed companions</summary>

These commands respectively allow you to **enable** or **disable** vehicle and leashed mobs teleportation when a player uses a Waystone. By default, the setting is set on **disabled**.
```
/function pk_waystones:cmd/settings/grouped_tp/enable
/function pk_waystones:cmd/settings/grouped_tp/disable
```
</details>
<details>
<summary>Tp In Other Dimensions</summary>

If disabled, this permission force players to only see waystones being in the same dimension as themselves from a waystone's GUI. It can be useful if you don't want players to be able to teleport between different [Multiverse](https://dev.bukkit.org/projects/multiverse-core) worlds.
This permission is enabled by default, meaning players can teleport in any dimensions.

You can **enable** or **disable** the current state of the permission using these following commands respectively:
```
/function pk_waystones:cmd/settings/show_same_dimension_only/enable
/function pk_waystones:cmd/settings/show_same_dimension_only/disable
```
</details>

# 🧰 Other Commands

The data pack also provides some handy commands. Some of them are usable by both operators and regular players.

## Give yourself a waystone

If you are an operator of your server or if cheats are enabled in your single-player world, you can give yourself a waystone of any variant using these following commands:
```
/function pk_waystones:cmd/give/regular
/function pk_waystones:cmd/give/sand
/function pk_waystones:cmd/give/deepslate
/function pk_waystones:cmd/give/nether
```

## (For non-op players) Hide locations from the waystones list

This command can be used even by players who aren't operators on the server. It allows you to hide coordinates of waystones from waystones' GUI. It can be useful if you're a video maker who plays on a PvP server, and don't want to leak your waystones' location.  
Of course, this setting is player-specific. Meaning by changing it, it will only apply for yourself (not for other players).  
Using these following commands, if the value is set on **1**, waystones' location will be hidden, if set on **0**, waystones' location will show:
```
/trigger pk.waystones.player.setting.hide_coordinates set 1
/trigger pk.waystones.player.setting.hide_coordinates set 0
```

# 🧹 Uninstall

⚠️ **This process can be inconsistent on V.2, especially on modified version of Minecraft.**

Waystones comes with an automatic uninstallation process. Running it will:
- Remove all waystones that have been placed in your world, in every dimensions
- Remove all scores and storage specific to the Waystones data pack
- If there is no more KawaMood data packs installed, also remove all common scores and storages

The uninstalling process may take some seconds to complete. Be sure to wait for the message telling you that you can safely remove the data pack from your world's folder before doing it. 

The command to start the uninstalling process is the following one: 
```
/function pk_waystones:base/uninstall/start
```

# ❓ F.A.Q

<details>
<summary>Do I need to install a resources pack?</summary>

No, this data pack doesn't require a resources pack.
</details>

<details>
<summary>The texture of the block shows regular player heads, how can I fix that?</summary>

You need to be connected to the internet the first time you use a new type of waystone. The textures of the player heads that are used to create their looks are indeed loaded and cached on the client-side, from (old or current) players skins that are stored on a Mojang server.

If you accidentally used a content that required to be online the first time you use it, and now see regular players heads instead of the expected texture, you can still go in the ".minecraft/assets/skins/" folder, then sort the sub-folders by date, and delete some recent folders. Once that is done, if your game was already started, you will need to restart it to update the cached content.
</details>

<details>
<summary>Waystones said they are already used, how to fix it?</summary>

Waystones can stay locked if their block container didn't update their blockstate correctly when  players closed them. Such issues can happen sometimes, especially on modified versions such as Paper or Spigot. In order to force waystones to unlock, there is a debug command:
```
/function pk_waystones:cmd/debug/unlock_closest_waystone
```
</details>

# 🪠 Report an issue

⚠️ **Except for bugs, this version of the data pack is not likely to be supported anymore.**

If you encountered an issue with this data pack, preferably join the [Discord server](https://discord.com/invite/w8s9XWgN6v), and open a post in the dedicated **#data-pack-issues** channel to describe your problem. Please, don't forget to provide all necessary informations including:
- The Minecraft version you're using.
- The version of the concerned data pack you're using.
- If you're using any modified version like Forge, Paper or Spigot.
- If you do, the plugins or mods you're using that may alter the functioning of data packs.
- The list of other data packs you're using, if you have others.
- A clear description of your issue, and a way to reproduce it.
- If necessary, a video or a screenshot of the issue in game.

Before doing that, please read the F.A.Q. section just above. The issue you're facing may be a common one, and a way to fix it may already have been provided in it.

# 📌 Other links

Thank you for using Waystones! It makes me happy to know people are enjoying it.
If you want to support its development and the development of other data packs, you can support me on my other social networks: 

- [Youtube](https://www.youtube.com/@KawaMood/)
- [Modrinth](https://modrinth.com/user/KawaMood)
- [Planet Minecraft](https://www.planetminecraft.com/member/kawamood/)
- Or if you're in a generous mood, I accept donation on [paypal](https://paypal.me/KawaMood) or [buy me a kawa](https://www.buymeacoffee.com/kawamood) (slang term for "coffee")!
