//	Name: DigSite_CraftTweaker.zs
//	Author: wideblaze
//	Custom Recipes for DigSite modpack.
//	Leave above header if copying this file into your modpack. No need to credit elsewhere.

// Hello fellow modpack developer -- if you are looking for well factored code -- you will have to look elsewhere.
// This is brute force coding. It's not elegant but it works.

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Inscriber / CustomNPCs bug fix by lays24mc https://github.com/bdew/ae2stuff/issues/193
import mods.appliedenergistics2.Inscriber;

###reinstall Printed Logic Ciruit Recipe
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <minecraft:gold_ingot>,true, <appliedenergistics2:material:15>);

###reinstall Logic Proccesor Recipe
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.addRecipe(<appliedenergistics2:material:22>, <minecraft:redstone>, false, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>);

###reinstall Calculation Proccesor Recipe
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
Inscriber.addRecipe(<appliedenergistics2:material:23>, <minecraft:redstone>, false, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>);

###reinstall Printed Engineering Ciruit Recipe
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.addRecipe(<appliedenergistics2:material:17>, <minecraft:diamond>, true, <appliedenergistics2:material:14>);

###reinstall Engineering Proccesor Recipe
Inscriber.removeRecipe(<appliedenergistics2:material:24>);
Inscriber.addRecipe(<appliedenergistics2:material:24>, <minecraft:redstone>, false, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>);

//	Recipe Removes


//	Removes
val RecipeRemoves = [
	<minecraft:iron_sword>, // early game difficulty
	<minecraft:iron_axe>,
	<minecraft:iron_hoe>,
	<minecraft:iron_pickaxe>,
	<minecraft:iron_shovel>,
	<minecraft:iron_chestplate>,
	<minecraft:iron_boots>,
	<minecraft:iron_leggings>,
	<minecraft:iron_helmet>,
	<minecraft:diamond_sword>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_hoe>,
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_chestplate>,
	<minecraft:diamond_boots>,
	<minecraft:diamond_leggings>,
	<minecraft:diamond_helmet>,	
	<minecraft:bread>, // better food quest line
	<compactmachines3:psd>, // end game gate
	<pneumaticcraft:amadron_tablet>, // nerf
	<mekanism:machineblock:4>, // nerf
	
] as IIngredient[];

for item in RecipeRemoves{
    recipes.remove(item);
}

// Add Shapeless

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


// Pneumaticcraft

// empty pcb
recipes.addShaped(<pneumaticcraft:empty_pcb:100>, [
			[<appliedenergistics2:material:17>, <appliedenergistics2:material:16>, <appliedenergistics2:material:18>], 
			[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], 
			[<minecraft:dye:10>, <minecraft:dye:10>, <minecraft:dye:10>] 
		]);





// Matter Overdrive

// head
recipes.addShaped(<matteroverdrive:rogue_android_part>, [
			[<matteroverdrive:machine_hull>, <matteroverdrive:tritanium_helmet>, <matteroverdrive:machine_hull>], 
			[<storagedrawers:controllerslave>, <minecraft:skull:2>, <pneumaticcraft:gps_tool>], 
			[<pneumaticcraft:unassembled_pcb>, <deepmoblearning:pristine_matter_mo_android>, <pneumaticcraft:unassembled_pcb>] 
		]);

//arm		
recipes.addShaped(<matteroverdrive:rogue_android_part:1>, [
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>], 
			[<matteroverdrive:machine_hull>,  <deepmoblearning:pristine_matter_mo_android>, <matteroverdrive:machine_hull>], 
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>] 
		]);
// leg
recipes.addShaped(<matteroverdrive:rogue_android_part:2>, [
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>], 
			[<matteroverdrive:tritanium_leggings>,  <deepmoblearning:pristine_matter_mo_android>, <matteroverdrive:tritanium_boots>	], 
			[<minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:rotten_flesh>], 
		]);
// torso
recipes.addShaped(<matteroverdrive:rogue_android_part:3>, [
			[<minecraft:rotten_flesh>, <matteroverdrive:tritanium_spine>, <minecraft:rotten_flesh>], 
			[<matteroverdrive:tritanium_chestplate>, <deepmoblearning:pristine_matter_mo_android>, <matteroverdrive:machine_hull>], 
			[<minecraft:rotten_flesh>, <matteroverdrive:tritanium_spine>, <minecraft:rotten_flesh>] 
		]);
// spine
recipes.addShaped(<matteroverdrive:tritanium_spine>, [
			[<matteroverdrive:dilithium_crystal>, <minecraft:bone>, <matteroverdrive:dilithium_crystal>], 
			[<matteroverdrive:tritanium_ingot>, <minecraft:bone>, <matteroverdrive:tritanium_ingot>], 
			[<matteroverdrive:dilithium_crystal>, <minecraft:bone>, <matteroverdrive:dilithium_crystal>] 
		]);


// Mekanism

// elite compressor  -- added special recipe for automated crafting since mekanism breaks recipes for machines.
// this recipe is more expensive than manual crafting because it's automated
recipes.addShaped(<mekanism:machineblock:7>.withTag({recipeType: 3}), [
			[<mekanism:enrichedalloy>, <mekanism:controlcircuit:3>, <mekanism:enrichedalloy>],
			[<minecraft:bucket>, <mekanism:basicblock:8>, <minecraft:bucket>], 
			[<mekanism:tierinstaller>,<mekanism:tierinstaller:1>,<mekanism:tierinstaller:2>] 
		]);






