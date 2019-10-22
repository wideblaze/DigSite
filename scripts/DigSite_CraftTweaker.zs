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
   <minecraft:torch>, // mod issue
   <realistictorches:matchbox>, // recipe fix
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
	<mekanism:atomicdisassembler>, // nerf
	<draconicevolution:grinder>, // nerf
	<compactmachines3:fieldprojector>, // end game item
	<matteroverdrive:pattern_drive>,// end game item
	<matteroverdrive:hc_battery>, // nerf
	<pneumaticcraft:drone>, // bugs
	<pneumaticcraft:logistic_drone>, // bugs
	<pneumaticcraft:harvesting_drone>, // bugs
	
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

// QoL Wool  to STRING
recipes.addShapeless(<minecraft:string>, [
			<ore:blockWool>,
		]);
		
		
// QoL Meat to FLESH
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:beef>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:porkchop>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:chicken>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:mutton>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:rabbit>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:fish>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:fish:1>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:fish:2>,
			<mekanism:salt>
		]);
recipes.addShapeless(<minecraft:rotten_flesh>, [
			<minecraft:fish:3>,
			<mekanism:salt>
		]);


// QOL Podzol
recipes.addShapeless(<minecraft:dirt:2>, [
			<forge:bucketfilled>.withTag({FluidName: "polluted_water", Amount: 1000}),
			<minecraft:dirt>
		]);
recipes.addShapeless(<minecraft:dirt:2>, [
			<forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}),
			<minecraft:dirt>
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

// NAME TAG
item = <minecraft:name_tag>;
recipes.addShaped(item, [
			[<jaff:iron_hook>], 
			[<deepmoblearning:pristine_matter_witch>], 
			[<pneumaticcraft:plastic:15>]
		]);
recipes.addShaped(item, [
			[null, <jaff:iron_hook>, null], 
			[<deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_extraterrestrial>], 
			[null, <pneumaticcraft:plastic:15>, null]
		]);


// Spawn CHICKEN
recipes.addShaped(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}), [
			[null, null, null], 
			[<minecraft:wheat>, <minecraft:egg>, <minecraft:wheat>], 
			[null, <minecraft:wheat>, null] 
		]);


// QOL COMPRESSED IRON RECIPES

// TRIPWIRE HOOK
recipes.addShaped(<minecraft:tripwire_hook> * 4, [
			[null, <pneumaticcraft:ingot_iron_compressed>, null], 
			[null, <ore:stickWood>, null],
			[null, <ore:plankWood>, null] 
		]);

// SHEARS
recipes.addShaped(<minecraft:shears> * 2, [
			[null, <pneumaticcraft:ingot_iron_compressed>, null], 
			[<pneumaticcraft:ingot_iron_compressed>, null, null],
			[null, null, null] 
		]);
		
// SHIELD
recipes.addShaped(<minecraft:shield>, [
			[<ore:plankWood>, <pneumaticcraft:ingot_iron_compressed>, <ore:plankWood>], 
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[null, <ore:plankWood>, null] 
		]);
		
// PISTON
recipes.addShaped(<minecraft:piston> * 2, [
			[ <ore:plankWood>,  <ore:plankWood>,  <ore:plankWood>], 
			[<ore:cobblestone>, <pneumaticcraft:ingot_iron_compressed>, <ore:cobblestone>],
			[<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>] 
		]);

// FLINT & STEEL
recipes.addShaped(<minecraft:flint_and_steel> * 2, [
			[<pneumaticcraft:ingot_iron_compressed>, <minecraft:flint>, null], 
			[null, null, null],
			[null, null, null] 
		]);

// BUCKET
recipes.addShaped(<minecraft:bucket> * 2, [
			[<pneumaticcraft:ingot_iron_compressed>, null, <pneumaticcraft:ingot_iron_compressed>], 
			[null, <pneumaticcraft:ingot_iron_compressed>, null],
			]);

// MOD REALISIC TORCHES

// Torch (early game)
recipes.addShaped(<minecraft:torch> * 4, [
			[null, <realistictorches:glowstone_paste>, null], 
			[null, <realistictorches:torch_lit>, null],
			[null, null, null] 
		]);
		
// Torch (early game)
recipes.addShaped(<minecraft:torch> * 4, [
			[null, <realistictorches:glowstone_paste>, null], 
			[null, <realistictorches:torch_smoldering>, null],
			[null, null, null] 
		]);

// QOL Torch (late game)
recipes.addShaped(<minecraft:torch> * 4, [
			[null, <minecraft:blaze_powder>, null], 
			[null, <realistictorches:torch_unlit>, null],
			[null, null, null] 
		]);
		
// QOL Jack'o'Lantern
recipes.addShaped(<minecraft:lit_pumpkin>, [
			[null, <minecraft:pumpkin>, null], 
			[null, <minecraft:redstone_torch>, null],
			[null, null, null] 
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

// PATTERN DRIVE
recipes.addShaped(<matteroverdrive:pattern_drive>, [
			[<matteroverdrive:dilithium_crystal>, <mekanism:controlcircuit:2>, <matteroverdrive:dilithium_crystal>], 
			[<matteroverdrive:machine_casing>, <mekanism:teleportationcore>, <matteroverdrive:machine_casing>], 
			[<appliedenergistics2:material:9>, <mekanism:controlcircuit:2>, <appliedenergistics2:material:9>] 
		]);




// MOD Mekanism

// ELITE COMPRESSOR -- added special recipe for automated crafting since mekanism breaks recipes for machines.
// this recipe is more expensive than manual crafting because it's automated
recipes.addShaped(<mekanism:machineblock:7>.withTag({recipeType: 3}), [
			[<mekanism:enrichedalloy>, <mekanism:controlcircuit:3>, <mekanism:enrichedalloy>],
			[<minecraft:bucket>, <mekanism:basicblock:8>, <minecraft:bucket>], 
			[<mekanism:tierinstaller>,<mekanism:tierinstaller:1>,<mekanism:tierinstaller:2>] 
		]);



// MOD Compact Machines

// FIELD PROJECTOR
recipes.addShaped(<compactmachines3:fieldprojector>, [
			[<mekanism:tierinstaller>,<mekanism:tierinstaller:1>,<mekanism:tierinstaller:2>] ,
			[<minecraft:lava_bucket>, <mekanism:basicblock:8>, <minecraft:water_bucket>], 
			[<mekanism:enrichedalloy>, <mekanism:controlcircuit:3>, <mekanism:enrichedalloy>]
		]);
		
// MOD REALISTIC TORCHES

recipes.addShaped(<realistictorches:matchbox>, [
			[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], 
			[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>] 
		]);

// QoL Matchbook fix

recipes.addShapeless(<realistictorches:matchbox>, [
			<realistictorches:matchbox>.anyDamage().noReturn(),
			<realistictorches:matchbox>.anyDamage().noReturn()
		]);

// FURNACE RECIPES

// FLUX NETWORKS
furnace.addRecipe(<fluxnetworks:flux>, <minecraft:redstone>);


// QOL

// QoL Flesh to LEATHER
furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>);

// QoL ET to OVERWORLDIAN
furnace.addRecipe(<deepmoblearning:living_matter_overworldian> * 2, <deepmoblearning:living_matter_extraterrestrial>);

// QoL Hellish to ET
furnace.addRecipe(<deepmoblearning:living_matter_extraterrestrial> * 2, <deepmoblearning:living_matter_hellish>);



// toss the garbage in the FURNACE

furnace.setFuel(<deepmoblearning:living_matter_overworldian>, 1600);
furnace.setFuel( <deepmoblearning:living_matter_extraterrestrial>, 3200);
furnace.setFuel(<deepmoblearning:living_matter_hellish>, 6400);

furnace.setFuel(<wearablebackpacks:backpack>, 3200);

furnace.setFuel(<minecraft:bed>, 1600);
furnace.setFuel(<minecraft:bed:1>, 1600);
furnace.setFuel(<minecraft:bed:2>, 1600);
furnace.setFuel(<minecraft:bed:3>, 1600);
furnace.setFuel(<minecraft:bed:4>, 1600);
furnace.setFuel(<minecraft:bed:5>, 1600);
furnace.setFuel(<minecraft:bed:6>, 1600);
furnace.setFuel(<minecraft:bed:7>, 1600);
furnace.setFuel(<minecraft:bed:8>, 1600);
furnace.setFuel(<minecraft:bed:9>, 1600);
furnace.setFuel(<minecraft:bed:10>, 1600);
furnace.setFuel(<minecraft:bed:11>, 1600);
furnace.setFuel(<minecraft:bed:12>, 1600);
furnace.setFuel(<minecraft:bed:13>, 1600);
furnace.setFuel(<minecraft:bed:14>, 1600);
furnace.setFuel(<minecraft:bed:15>, 1600);
furnace.setFuel(<minecraft:nether_wart>, 200);
furnace.setFuel(<minecraft:writable_book>, 1600);
furnace.setFuel(<minecraft:book>, 800);
furnace.setFuel(<minecraft:feather>, 25);
furnace.setFuel(<minecraft:string>, 25);
furnace.setFuel(<minecraft:wheat_seeds>, 25);
furnace.setFuel(<minecraft:pumpkin_seeds>, 25);
furnace.setFuel(<minecraft:melon_seeds>, 25);
furnace.setFuel(<minecraft:beetroot_seeds>, 25);
furnace.setFuel(<complexcrops:rice>, 25);
furnace.setFuel(<complexcrops:cucumber_seeds>, 25);
furnace.setFuel(<complexcrops:corn_seeds>, 25);
furnace.setFuel(<minecraft:vine>, 25);
furnace.setFuel(<minecraft:red_flower:1>, 25);
furnace.setFuel(<minecraft:red_flower:2>, 25);
furnace.setFuel(<minecraft:red_flower:3>, 25);
furnace.setFuel(<minecraft:red_flower:4>, 25);
furnace.setFuel(<minecraft:red_flower:5>, 25);
furnace.setFuel(<minecraft:red_flower:6>, 25);
furnace.setFuel(<minecraft:red_flower:7>, 25);
furnace.setFuel(<minecraft:red_flower:8>, 25);
furnace.setFuel(<minecraft:yellow_flower>, 25);
furnace.setFuel(<minecraft:red_flower>, 25);
furnace.setFuel(<minecraft:tallgrass:1>, 25);
furnace.setFuel(<minecraft:web>, 100);
furnace.setFuel(<minecraft:leaves>, 100);
furnace.setFuel(<minecraft:leaves:2>, 100);
furnace.setFuel(<minecraft:leaves:3>, 100);
furnace.setFuel(<minecraft:tallgrass:2>, 100);
furnace.setFuel(<minecraft:deadbush>, 100);
furnace.setFuel(<minecraft:double_plant:1>, 100);
furnace.setFuel(<minecraft:double_plant:2>, 100);
furnace.setFuel(<minecraft:double_plant:3>, 100);
furnace.setFuel(<minecraft:double_plant:4>, 100);
furnace.setFuel(<minecraft:double_plant:5>, 100);
furnace.setFuel(<minecraft:poisonous_potato>, 100);
furnace.setFuel(<minecraft:reeds>, 100);
furnace.setFuel(<complexcrops:cucumber>, 200);
furnace.setFuel(<minecraft:paper>, 100);
furnace.setFuel(<minecraft:wheat>, 100);
furnace.setFuel(<minecraft:leather>, 200);
furnace.setFuel(<minecraft:leather_helmet>, 1000);
furnace.setFuel(<minecraft:leather_boots>, 800);
furnace.setFuel(<minecraft:leather_leggings>, 1400);
furnace.setFuel(<minecraft:leather_chestplate>, 1600);
furnace.setFuel(<chisel:carpet_black>, 25);
furnace.setFuel(<chisel:carpet_black:1>, 25);
furnace.setFuel(<chisel:carpet_red>, 25);
furnace.setFuel(<chisel:carpet_red:1>, 25);
furnace.setFuel(<chisel:carpet_green:1>, 25);
furnace.setFuel(<chisel:carpet_brown>, 25);
furnace.setFuel(<chisel:carpet_brown:1>, 25);
furnace.setFuel(<chisel:carpet_blue>, 25);
furnace.setFuel(<chisel:carpet_blue:1>, 25);
furnace.setFuel(<chisel:carpet_purple>, 25);
furnace.setFuel(<chisel:carpet_purple:1>, 25);
furnace.setFuel(<chisel:carpet_cyan>, 25);
furnace.setFuel(<chisel:carpet_cyan:1>, 25);
furnace.setFuel(<chisel:carpet_lightgray>, 25);
furnace.setFuel(<chisel:carpet_lightgray:1>, 25);
furnace.setFuel(<chisel:carpet_gray>, 25);
furnace.setFuel(<chisel:carpet_gray:1>, 25);
furnace.setFuel(<chisel:carpet_pink>, 25);
furnace.setFuel(<chisel:carpet_pink:1>, 25);
furnace.setFuel(<chisel:carpet_lime>, 25);
furnace.setFuel(<chisel:carpet_lime:1>, 25);
furnace.setFuel(<chisel:carpet_yellow>, 25);
furnace.setFuel(<chisel:carpet_yellow:1>, 25);
furnace.setFuel(<chisel:carpet_lightblue>, 25);
furnace.setFuel(<chisel:carpet_lightblue:1>, 25);
furnace.setFuel(<chisel:carpet_magenta>, 25);
furnace.setFuel(<chisel:carpet_magenta:1>, 25);
furnace.setFuel(<chisel:carpet_orange>, 25);
furnace.setFuel(<chisel:carpet_orange:1>, 25);
furnace.setFuel(<chisel:carpet_white>, 25);
furnace.setFuel(<chisel:carpet_white:1>, 25);
furnace.setFuel(<minecraft:rail>, 25);
furnace.setFuel(<chisel:redstone:11>, 25);
furnace.setFuel(<minecraft:painting>, 25);
furnace.setFuel(<minecraft:lit_pumpkin>, 25);
furnace.setFuel(<minecraft:redstone_torch>, 25);
furnace.setFuel(<hotornot:mitts>, 25);
furnace.setFuel(<minecraft:item_frame>, 25);
furnace.setFuel(<realistictorches:torch_lit>, 25);
furnace.setFuel(<realistictorches:torch_unlit>, 25);
furnace.setFuel(<mekanism:cardboardbox>, 25);
furnace.setFuel(<ore:blockElevator>, 25);
furnace.setFuel(<ore:dye>, 10);
furnace.setFuel(<minecraft:dirt:2>, 100);
furnace.setFuel(<trashcansreborn:trashcan>, 100);






