//Name: DigSite_LootTweaker.zs
//Author:Wideblaze
//Version: 0.1
//Custom Loot Tables for TBD_named modpack. Note: Chance values may be wrong. Need to do more research.
//Leave above header if copying this file into your modpack. No need to credit elsewhere.

//Imports. This script assumes crafttweaker and loottweaker mods are installed and will not function without them.
import crafttweaker.entity.IEntityDropFunction;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

//Write to log file so we can tell if things went wrong with this script
print("Initializing LOOTTWEAKER SCRIPT");

// Chests

//Clear all pools for this table. This will remove all loot.
val blacksmithChest = LootTables.getTable("minecraft:chests/village_blacksmith");
blacksmithChest.clear();

//Now to add back custom loot balanced for modpack

//Common Loot: Many of these, always at least 1
val blacksmithCommon = blacksmithChest.addPool("Common", 3, 6, 0, 0);
blacksmithCommon.addItemEntryHelper(<minecraft:bow>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:arrow>, 5, 1, [Functions.setCount(2, 12)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:bed:3>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:furnace>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:bucket>, 1, 1, [Functions.setCount(1, 1)], []);
blacksmithCommon.addItemEntryHelper(<realistictorches:torch_unlit>, 10, 1, [Functions.setCount(1, 32)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:stone_sword>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:bread>, 10, 1, [Functions.setCount(2, 10)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:iron_ore>, 10, 1, [Functions.setCount(1, 4)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:coal>, 10, 1, [Functions.setCount(2, 5)], []);
blacksmithCommon.addItemEntryHelper(<minecraft:coal_block>, 7, 1, [Functions.setCount(1, 3)], []);
blacksmithCommon.addItemEntryHelper(<realistictorches:glowstone_paste>, 5, 1, [Functions.setCount(1, 3)], []);
blacksmithCommon.addItemEntryHelper(<storagedrawers:basicdrawers>.withTag({material: "oak"}), 5, 1, [Functions.setCount(1, 2)], []);

//Rare Loot: Few or none of these 1 in 2 chance
val blacksmithRare = blacksmithChest.addPool("Rare", 0, 1, 0, 0);
blacksmithRare.addItemEntryHelper(<adpother:iron_respirator>, 6, 1, [Functions.setCount(1, 1)], []);
blacksmithRare.addItemEntryHelper(<realistictorches:matchbox>, 7, 1, [Functions.setCount(1, 1)], []);
blacksmithRare.addItemEntryHelper(<adchimneys:brick:1>, 5, 1, [Functions.setCount(1, 2)], []);
blacksmithRare.addItemEntryHelper(<adchimneys:brick:2>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithRare.addItemEntryHelper(<adchimneys:brick>, 5, 1, [Functions.setCount(3, 6)], []);
blacksmithRare.addItemEntryHelper(<minecraft:name_tag>, 6, 1, [Functions.setCount(1, 1)], []);

//Epic Loot: Few or none of these these 1 in 6 chance
val blacksmithEpic = blacksmithChest.addPool("Epic", -5, 1, 0, 0);
blacksmithEpic.addItemEntryHelper(<storagedrawers:upgrade_storage:2>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithEpic.addItemEntryHelper(<jaff:diamond_fishing_rod>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithEpic.addItemEntryHelper(<adpother:iron_filter>, 5, 1, [Functions.setCount(1, 1)], []);

//Legendary Loot: Few or none of these 1 in 12 chance
val blacksmithLegendary = blacksmithChest.addPool("Legendary", -10, 1, 0, 0);
blacksmithLegendary.addItemEntryHelper(<minecraft:chainmail_boots>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithLegendary.addItemEntryHelper(<minecraft:chainmail_leggings>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithLegendary.addItemEntryHelper(<minecraft:chainmail_chestplate>, 5, 1, [Functions.setCount(1, 1)], []);
blacksmithLegendary.addItemEntryHelper(<minecraft:chainmail_helmet>, 5, 1, [Functions.setCount(1, 1)], []);


// Entities
val zombie = LootTables.getTable("minecraft:entities/zombie");
val zombieCommon = zombie.addPool("Common", -3, 1, 0, 0);
zombieCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);


val husk = LootTables.getTable("minecraft:entities/husk");
val huskCommon = husk.addPool("Common", -2, 1, 0, 0);
huskCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val zombie_villager = LootTables.getTable("minecraft:entities/zombie_villager");
val zombie_villagerCommon = zombie_villager.addPool("Common", 1, 1, 0, 0);
zombie_villagerCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val witch = LootTables.getTable("minecraft:entities/witch");
val witchCommon = witch.addPool("Common", 1, 1, 0, 0);
witchCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val spider = LootTables.getTable("minecraft:entities/spider");
val spiderCommon = spider.addPool("Common", -4, 1, 0, 0);
spiderCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val cave_spider = LootTables.getTable("minecraft:entities/cave_spider");
val cave_spiderCommon = cave_spider.addPool("Common", 1, 1, 0, 0);
cave_spiderCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val creeper = LootTables.getTable("minecraft:entities/creeper");
val creeperCommon = creeper.addPool("Common", 1, 1, 0, 0);
creeperCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val skeleton = LootTables.getTable("minecraft:entities/skeleton");
val skeletonCommon = skeleton.addPool("Common", -1, 1, 0, 0);
skeletonCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val slime = LootTables.getTable("minecraft:entities/slime");
val slimeCommon = slime.addPool("Common", -10, 1, 0, 0);
slimeCommon.addItemEntryHelper(<deepmoblearning:living_matter_overworldian>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);

val enderman = LootTables.getTable("minecraft:entities/enderman");
val endermanCommon = enderman.addPool("Common", 1, 1, 0, 0);
endermanCommon.addItemEntryHelper(<deepmoblearning:living_matter_extraterrestrial>* 1, 1, 1,  [], [Conditions.killedByPlayer()]);



















print("Initialized LOOTTWEAKER SCRIPT'");