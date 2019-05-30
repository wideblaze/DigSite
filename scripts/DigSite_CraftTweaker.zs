//	Name: DigSite_CraftTweaker.zs
//	Author: wideblaze
//	Custom Recipe Cookbook for DigSite modpack.
//	Leave above header if copying this file into your modpack. No need to credit elsewhere.

// Hello fellow modpack developer -- if you are looking for well factored code -- you will have to look elsewhere.
// This is brute force coding. It's not elegant but it works.

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//	Recipe Removes

//	Removes
val RecipeRemoves = [
    <pneumaticcraft:crop_support>, // confict
	<minecraft:iron_sword>, // early game difficulty
	<minecraft:iron_axe>, // early game difficulty
	<minecraft:iron_hoe>, // early game difficulty
	<minecraft:iron_pickaxe>, // early game difficulty
	<minecraft:iron_shovel>, // early game difficulty
	<minecraft:iron_chestplate>, // early game difficulty
	<minecraft:iron_boots>, // early game difficulty
	<minecraft:iron_leggings>, // early game difficulty
	<minecraft:iron_helmet>, // early game difficulty
	<minecraft:diamond_sword>, // early game difficulty
	<minecraft:diamond_axe>, // early game difficulty
	<minecraft:diamond_hoe>, // early game difficulty
	<minecraft:diamond_pickaxe>, // early game difficulty
	<minecraft:diamond_shovel>, // early game difficulty
	<minecraft:diamond_chestplate>, // early game difficulty
	<minecraft:diamond_boots>, // early game difficulty
	<minecraft:diamond_leggings>, // early game difficulty
	<minecraft:diamond_helmet>,	 // early game difficulty
	<appliedenergistics2:certus_quartz_sword>, // early game difficulty
	<appliedenergistics2:certus_quartz_pickaxe>, // early game difficulty
	<appliedenergistics2:nether_quartz_sword>, // early game difficulty
	<appliedenergistics2:nether_quartz_pickaxe>, // early game difficulty
	<matteroverdrive:tritanium_wrench>, // bugs
	<matteroverdrive:tritanium_pickaxe>, // mid game difficulty
	<matteroverdrive:omni_tool>,// nerf
	<supersoundmuffler:sound_muffler_bauble>, // nerf
	<minecraft:bread>, // better food quest line
	<compactmachines3:psd>, // end game gate
	<malisisdoors:forcefielditem>, // end game gate
	<pneumaticcraft:amadron_tablet>, // nerf
	<mekanism:machineblock:4>, // nerf
	<torchmaster:feral_flare_lantern>, // nerf
	<torchmaster:terrain_lighter>, // nerf
	<microblockcbe:saw_stone>, // nerf
	<microblockcbe:saw_iron>, // nerf
	<microblockcbe:saw_diamond>, // nerf
	
] as IIngredient[];

for item in RecipeRemoves{
    recipes.remove(item);
}

// Add Shapeless

// QoL Book to PAPER
recipes.addShapeless("QoLPaper",<minecraft:paper> * 2, [
			<minecraft:book>
		]);

// QoL gravel to FLINT
recipes.addShapeless("QoLGravel",<minecraft:flint>, [
			<minecraft:gravel>,
			<minecraft:gravel>,
			<minecraft:gravel>
		]);
		
// QoL logs to STICKS
recipes.addShapeless("QoLSticks",<minecraft:stick> * 16, [
			<ore:logWood>,
			<ore:logWood>
		]);

// QoL logs to CHESTS
recipes.addShapeless("QoLChests",<minecraft:chest> * 4, [
			<ore:logWood>,
			<ore:logWood>,
			<ore:logWood>,
			<ore:logWood>,
			<ore:logWood>,
			<ore:logWood>,
			<ore:logWood>,
			<ore:logWood>
		]);

// MOD Complex Crops

// FLOUR
recipes.addShapeless("Flour",<appliedenergistics2:material:4>, [
			<minecraft:wheat>, 
			<minecraft:wheat>, 
			<minecraft:wheat>
		]);

// RICE
recipes.addShapeless("rice",<complexcrops:rice>, [
			<minecraft:water_bucket>, 
			<minecraft:wheat_seeds>
		]);

// CORN SEEDS
recipes.addShapeless("corn_seeds",<complexcrops:corn_seeds>, [
			<complexcrops:rice>, 
			<minecraft:carrot>,
			<minecraft:reeds>,
			<minecraft:dirt>
		]);

// CUCUMBER SEEDS 
recipes.addShapeless("cucumber_seeds",<complexcrops:cucumber_seeds>, [
			<complexcrops:rice>, 
			<minecraft:melon_block>,
			<minecraft:dirt>
		]);


// Add Shaped

// MOD Minecraft

// EARLY GAME DIFFICULTY

// IRON SWORD
var item = <minecraft:iron_sword>;
var damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Sword").withLore(["This sword is junk"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>], 
			[<minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>], 
			[<minecraft:stick>]
		]);

// IRON AXE
item = <minecraft:iron_axe>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Axe").withLore(["This axe is junk"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>, <minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);

// IRON HOE
item = <minecraft:iron_hoe>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Hoe").withLore(["This hoe is useless"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>, <minecraft:iron_ingot>], 
			[null, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
			[null, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);

// IRON PICKAXE
item = <minecraft:iron_pickaxe>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Pick").withLore(["This pick is garbo"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], 
			[null, <ore:stickWood>, null], 
			[null, <minecraft:stick>, null]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
			[null, <ore:stickWood>, null], 
			[null, <minecraft:stick>, null]
		]);

// IRON SHOVEL
item = <minecraft:iron_shovel>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Shovel").withLore(["This shovel is junk"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>], 
			[<minecraft:stick>], 
			[<minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>], 
			[<minecraft:stick>], 
			[<minecraft:stick>]
		]);

// IRON CHESTPLATE
item = <minecraft:iron_chestplate>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Chestplate").withLore(["This chestplate is cheap"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>, <minecraft:iron_ingot>,<minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>, null, <pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>,<pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>,<pneumaticcraft:ingot_iron_compressed>,<pneumaticcraft:ingot_iron_compressed>]
		]);

// IRON BOOTS
item = <minecraft:iron_boots>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Boots").withLore(["These boots are meh"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>, null,<minecraft:iron_ingot>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>, null, <pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>, null,<pneumaticcraft:ingot_iron_compressed>]
		]);

// IRON LEGGINGS
item = <minecraft:iron_leggings>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Leggins").withLore(["These leggins are bad"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>, null,<minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>,null,<minecraft:iron_ingot>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>, null,<pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>,null,<pneumaticcraft:ingot_iron_compressed>]
		]);

// IRON HELMET
item = <minecraft:iron_helmet>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Iron Helmet").withLore(["This helmet is poorly made"]);
recipes.addShaped(damagedItem, [
			[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], 
			[<minecraft:iron_ingot>, null,<minecraft:iron_ingot>]
		]);
recipes.addShaped(item, [
			[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
			[<pneumaticcraft:ingot_iron_compressed>, null,<pneumaticcraft:ingot_iron_compressed>]
		]);

// DIAMOND SWORD
item = <minecraft:diamond_sword>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Sword").withLore(["This sword is junk"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>], 
			[<minecraft:diamond>], 
			[<minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>], 
			[<minecraft:stick>]
		]);

// DIAMOND AXE
item = <minecraft:diamond_axe>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Axe").withLore(["This axe is junk"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>, <minecraft:diamond>], 
			[<minecraft:diamond>, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);

// DIAMOND HOE
item = <minecraft:diamond_hoe>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Hoe").withLore(["This hoe is useless"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>, <minecraft:diamond>], 
			[null, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>], 
			[null, <minecraft:stick>], 
			[null, <minecraft:stick>]
		]);
		
// DIAMOND PICKAXE
item = <minecraft:diamond_pickaxe>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Pick").withLore(["This pick is garbo"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 
			[null, <ore:stickWood>, null], 
			[null, <minecraft:stick>, null]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>], 
			[null, <ore:stickWood>, null], 
			[null, <minecraft:stick>, null]
		]);

// DIAMOND SHOVEL
item = <minecraft:diamond_shovel>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Shovel").withLore(["This shovel is junk"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>], 
			[<minecraft:stick>], 
			[<minecraft:stick>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>], 
			[<minecraft:stick>], 
			[<minecraft:stick>]
		]);

// DIAMOND CHESTPLATE
item = <minecraft:diamond_chestplate>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Chestplate").withLore(["This chestplate is cheap"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>, null, <minecraft:diamond>], 
			[<minecraft:diamond>, <minecraft:diamond>,<minecraft:diamond>], 
			[<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>, null, <mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>,<mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>,<mekanism:compresseddiamond>,<mekanism:compresseddiamond>]
		]);

// DIAMOND BOOTS
item = <minecraft:diamond_boots>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Boots").withLore(["These boots are meh"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>, null, <minecraft:diamond>], 
			[<minecraft:diamond>, null,<minecraft:diamond>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>, null, <mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>, null,<mekanism:compresseddiamond>]
		]);

// DIAMOND LEGGINGS
item = <minecraft:diamond_leggings>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Leggins").withLore(["These leggins are bad"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 
			[<minecraft:diamond>, null,<minecraft:diamond>], 
			[<minecraft:diamond>,null,<minecraft:diamond>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>, null,<mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>,null,<mekanism:compresseddiamond>]
		]);

// DIAMOND HELMET
item = <minecraft:diamond_helmet>;
damagedItem = item.withTag({RepairCost: 100}).withDamage((item.maxDamage) - 5).withDisplayName("Brittle Diamond Helmet").withLore(["This helmet is poorly made"]);
recipes.addShaped(damagedItem, [
			[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], 
			[<minecraft:diamond>, null,<minecraft:diamond>]
		]);
recipes.addShaped(item, [
			[<mekanism:compresseddiamond>, <mekanism:compresseddiamond>, <mekanism:compresseddiamond>], 
			[<mekanism:compresseddiamond>, null,<mekanism:compresseddiamond>]
		]);
		
// MOD AE2

// CERTUS QUARTZ SWORD
item = <appliedenergistics2:certus_quartz_sword>;
recipes.addShaped(item, [
			[<appliedenergistics2:material>], 
			[<pneumaticcraft:ingot_iron_compressed>], 
			[<minecraft:stick>]
		]);

// CERTUS QUARTZ PICK
item = <appliedenergistics2:certus_quartz_pickaxe>;
recipes.addShaped(item, [
			[<appliedenergistics2:material>,<appliedenergistics2:material>,<appliedenergistics2:material>], 
			[null,<pneumaticcraft:ingot_iron_compressed>,null], 
			[null,<minecraft:stick>,null]
		]);

// NETHER QUARTZ SWORD
item = <appliedenergistics2:nether_quartz_sword>;
recipes.addShaped(item, [
			[<minecraft:quartz>], 
			[<pneumaticcraft:ingot_iron_compressed>], 
			[<minecraft:stick>]
		]);

// NETHER QUARTZ PICK
item = <appliedenergistics2:nether_quartz_pickaxe>;
recipes.addShaped(item, [
			[<minecraft:quartz>,<minecraft:quartz>,<minecraft:quartz>], 
			[null,<pneumaticcraft:ingot_iron_compressed>,null], 
			[null,<minecraft:stick>,null]
		]);

// MOD microblockscbe

// DIAMOND SAW
item = <microblockcbe:saw_diamond>;
recipes.addShaped(item, [
			[<minecraft:blaze_rod>, <mekanism:compressedobsidian>, <mekanism:compressedobsidian>], 
			[null, <mekanism:otherdust>, <mekanism:otherdust>]
		]);



// MOD Matter Overdrive

// TRITANIUM PICK
item = <matteroverdrive:tritanium_pickaxe>;
recipes.addShaped(item, [
			[<matteroverdrive:tritanium_ingot>,<matteroverdrive:tritanium_ingot>,<matteroverdrive:tritanium_ingot>], 
			[null,<minecraft:obsidian>,null], 
			[null,<minecraft:stick>,null]
		]);


// MOD Pneumaticcraft

// EMPTY PCB
recipes.addShaped(<pneumaticcraft:empty_pcb:100>, [
			[<appliedenergistics2:material:17>, <appliedenergistics2:material:16>, <appliedenergistics2:material:18>], 
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], 
			[<minecraft:dye:10>, <minecraft:dye:10>, <minecraft:dye:10>] 
		]);

// CROP SUPPORT
recipes.addShaped(<pneumaticcraft:crop_support>, [
			[< minecraft:stick>, null, <minecraft:stick>], 
			[< minecraft:stick>, null, <minecraft:stick>]
		]);





// MOD Matter Overdrive

// ANDRIOD HEAD
recipes.addShaped(<matteroverdrive:rogue_android_part>, [
			[<matteroverdrive:machine_hull>, <matteroverdrive:tritanium_helmet>, <matteroverdrive:machine_hull>], 
			[<storagedrawers:controllerslave>, <minecraft:skull:2>, <pneumaticcraft:gps_tool>], 
			[<pneumaticcraft:unassembled_pcb>, <deepmoblearning:pristine_matter_mo_android>, <pneumaticcraft:unassembled_pcb>] 
		]);

// ANDRIOD ARM		
recipes.addShaped(<matteroverdrive:rogue_android_part:1>, [
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>], 
			[<matteroverdrive:machine_hull>,  <deepmoblearning:pristine_matter_mo_android>, <matteroverdrive:machine_hull>], 
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>] 
		]);
		
// ANDRIOD LEG
recipes.addShaped(<matteroverdrive:rogue_android_part:2>, [
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>], 
			[<matteroverdrive:tritanium_leggings>,  <deepmoblearning:pristine_matter_mo_android>, <matteroverdrive:tritanium_boots>	], 
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>], 
		]);
// ANDRIOD TORSO
recipes.addShaped(<matteroverdrive:rogue_android_part:3>, [
			[<minecraft:rotten_flesh>, <matteroverdrive:tritanium_spine>, <minecraft:rotten_flesh>], 
			[<matteroverdrive:tritanium_chestplate>, <deepmoblearning:pristine_matter_mo_android>, <matteroverdrive:machine_hull>], 
			[<minecraft:rotten_flesh>, <matteroverdrive:tritanium_spine>, <minecraft:rotten_flesh>] 
		]);
// ANDRIOD SPINE
recipes.addShaped(<matteroverdrive:tritanium_spine>, [
			[<matteroverdrive:dilithium_crystal>, <minecraft:bone>, <matteroverdrive:dilithium_crystal>], 
			[<matteroverdrive:tritanium_ingot>, <minecraft:bone>, <matteroverdrive:tritanium_ingot>], 
			[<matteroverdrive:dilithium_crystal>, <minecraft:bone>, <matteroverdrive:dilithium_crystal>] 
		]);


// MOD Mekanism

// ELITE COMPRESSOR -- added special recipe for automated crafting since mekanism breaks recipes for machines.
// this recipe is more expensive than manual crafting because it's automated
recipes.addShaped(<mekanism:machineblock:7>.withTag({recipeType: 3}), [
			[<mekanism:enrichedalloy>, <mekanism:controlcircuit:3>, <mekanism:enrichedalloy>],
			[<minecraft:bucket>, <mekanism:basicblock:8>, <minecraft:bucket>], 
			[<mekanism:tierinstaller>,<mekanism:tierinstaller:1>,<mekanism:tierinstaller:2>] 
		]);








