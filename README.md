# Description
Re:Enchanting is a rework of the enchanting table, while staying vanilla friendly.

# Features

## Recipe
The crafting recipe for an enchanting table now uses a red carpet instead of a book.
![Modified enchanting table recipe.](https://cdn.modrinth.com/data/cached_images/49d22d34d502b979b27a811813fda371356ca3ce.png)
## Enchanting
**Enchanting is now done without a GUI.** Simply place your equipment on the enchanting table and use a lapis on it to enchant it.

![Showcase of item being placed and enchanted on enchanting table.](https://i.imgur.com/pNo4mOD.gif)

Enchanting tables can now **use both normal and chiseled bookshelves** when enchanting. Using normal bookshelves can grant a random enchantment from a set list of enchantments.
If any chiseled bookshelves with enchanted books are within range of the enchanting table, it will try to apply those enchants first.

![Showcase of enchantment being grabbed from chiseled bookshelf.](https://i.imgur.com/aV7119g.gif)

The **xp cost of enchanting is determined by how many enchanted books and bookshelves are nearby** the enchanting table. To see the cost, simply look at an enchanting table with a lapis in your mainhand.

## Redstone
Enchanting tables now **output a redstone signal** if an item is placed on it! The output strength is based on how many enchantments the item has and the item itself _(eg. a sword with sharpness 5 will output a redstone strength of 2)_. The redstone output will turn off as soon as the item gets enchanted or is removed.

![Showcase of redstone functionality.](https://i.imgur.com/ZeKjDEs.gif)

Hoppers can also interact with enchanting tables, by either placing or taking items. If a hopper is facing down into the enchanting table it will place any enchantable item on the enchanting table. A hopper below the enchanting table can take items, and because the enchanting table outputs a redstone signal, the hopper will be locked until the item has been enchanted.

# Technical Stuff
## Bookshelf enchantments
<details>
<summary>List of available enchantments from normal bookshelves</summary>

| Enchantment           | Level |
|-----------------------|-------|
| Sharpness             | 1-5   |
| Smite                 | 1-5   |
| Knockback             | 1-2   |
| Unbreaking            | 1-3   |
| Efficiency            | 1-5   |
| Fortune               | 1-3   |
| Power                 | 1-5   |
| Protection            | 1-5   |
| Blast Protection      | 1-5   |
| Fire Protection       | 1-5   |
| Projectile Protection | 1-5   |

</details>

## XP Cost
<details>
<summary>Xp cost calculation</summary>
  
Xp cost is based on the following graph:

![Point graph of xp cost.](https://cdn.modrinth.com/data/cached_images/701a1a1a5aa4976b82e87634a9f4cf5e515acafd.png)

Enchanted books and normal bookshelves count as one point each. If the cost is too high and you don't have enough enchanted books to lower it, maybe using normal bookshelves could help!
</details>

## Known Bugs
<details>
<summary>List of known bugs</summary>
  
| Description                                                                      | Status    |
|----------------------------------------------------------------------------------|-----------|
| Repeaters blink when directly next to enchanting table.                          | Unfixable |
| Comparators don't output a signal when directly next to enchanting table.        | Unfixable |
| Redstone wire next to enchanting table re-powers on block update.                 | Unfixable |
| Hoppers below powered enchanting tables can pull items if redstone-tick updated. | Unfixable |
| Redstone output from enchanting tables can interfere if placed in close proximity. | Unfixable |
| Hopper minecarts can take from chiseled bookshelves without updating their data. | Fixed in 0.1.1 |
| Hopper minecarts can take from enchanting tables without updating their data. | Fixed in 0.1.1 |
| Block placing raycast sometimes finds wrong block or completely misses target. | Fixed in 0.1.1 |
| Particles don't spawn around enchanting table.                                   | Fixed in 0.1.1 |
| Using a waterlogged enchanting table causes waterlogged state to flicker.         | Fixed in 0.1.1 |

</details>
