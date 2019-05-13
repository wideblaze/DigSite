#priority -5000

/*

	DigSite postInit
	
	Do last and overrides


*/

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


/*

// Custom Block Hardness
static hardnessMap as float[IItemStack] = {
//	<minecraft:netherrack:0>: 8,
}

for item, hardness in hardnessMap {
		item.hardness = hardness;
}


// Custom Item Durabilty
static maxDamageMap as int[IItemStack] = {
//	<minecraft:wooden_sword:0>: 100,
}

for item, durability in maxDamageMap {
		item.maxDamage = durability;
}

// Custom Item Display Names
static displayNameMap as string[IItemStack] = {
//	<minecraft:netherrack:0>: "Hotter than Hell",
}

for item, displayName in displayNameMap {
		item.displayName = displayName;
}


*/

