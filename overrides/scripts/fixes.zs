// *** Chunkloading through plugins only
mods.jei.JEI.removeAndHide(<mekanism:anchorupgrade>);
<mekanism:anchorupgrade>.addTooltip(format.red("Place an iron block then right click it with a blaze rod to make a chunkloader"));
recipes.remove(<opencomputers:upgrade:4>);
mods.jei.JEI.removeAndHide(<opencomputers:upgrade:4>);
<warpdrive:chunk_loader.basic>.addTooltip(format.red("Place an iron block then right click it with a blaze rod to make a chunkloader"));
<warpdrive:chunk_loader.advanced>.addTooltip(format.red("Place an iron block then right click it with a blaze rod to make a chunkloader"));
<warpdrive:chunk_loader.superior>.addTooltip(format.red("Place an iron block then right click it with a blaze rod to make a chunkloader"));

// *** Corruption
// ICBM rejuvenation for balance and world corruption
recipes.remove(<icbmclassic:explosives:12>);
<icbmclassic:explosives:12>.addTooltip(format.red("Member of the corruptolic anonymous"));
recipes.remove(<icbmclassic:missile:12>);
<icbmclassic:missile:12>.addTooltip(format.red("Member of the corruptolic anonymous"));

// Mekanism Robit voiding items
mods.jei.JEI.removeAndHide(<mekanism:robit>);
<mekanism:robit>.addTooltip(format.red("Member of the corruptolic anonymous"));

// *** Crashing items/blocks
// AppliedEnergistics2 Security Terminal causing block drop
<appliedenergistics2:security_station>.addTooltip(format.red("Randomly breaks blocks when reloading chunks!"));

// Mekanism cardboard box
mods.jei.JEI.removeAndHide(<mekanism:cardboardbox>);
<mekanism:cardboardbox>.addTooltip(format.red("Member of the crasholic anonymous"));

// ICBM Xmas grenades
mods.jei.JEI.removeAndHide(<icbmclassic:grenade:29>);
<icbmclassic:grenade:29>.addTooltip(format.red("Member of the crasholic anonymous"));
mods.jei.JEI.removeAndHide(<icbmclassic:grenade:30>);
<icbmclassic:grenade:30>.addTooltip(format.red("Member of the crasholic anonymous"));

// OpenModularTurrets relativistic turret head
mods.jei.JEI.removeAndHide(<openmodularturrets:relativistic_turret>);
<openmodularturrets:relativistic_turret>.addTooltip(format.red("Member of the crasholic anonymous"));

// TechGuns guidded missile launcher
// (not working in SMP)
recipes.remove(<techguns:guidedmissilelauncher>);
<techguns:guidedmissilelauncher>.addTooltip(format.red("Single player only"));

// *** Equilibrium (a.k.a. duplication and unfair combat)
// Botania Tiny potato
mods.botania.ManaInfusion.removeRecipe(<botania:tinypotato>);
<botania:tinypotato>.addTooltip(format.red("Disabled under the Equilibrium act"));

// AppliedEnergistics2 annihilation planes (hardness bypass)
// won't work, need custom recipe config: recipes.removeShaped(<appliedenergistics2:part:300>); 
<appliedenergistics2:part:300>.addTooltip(format.red("Disabled under the Equilibrium act"));

// won't work, need custom recipe config: recipes.removeShaped(<appliedenergistics2:part:301>); 
<appliedenergistics2:part:301>.addTooltip(format.red("Disabled under the Equilibrium act"));

// AppliedEnergistics2 formation plane (duping)
// won't work, need custom recipe config: recipes.removeShaped(<appliedenergistics2:part:320>);
<appliedenergistics2:part:320>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Building gadget Exchanging gadget instant breaking hull blocks
mods.jei.JEI.removeAndHide(<buildinggadgets:exchangertool>);
<buildinggadgets:exchangertool>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Mekanism digital miner bypassing unbreakable blocks
mods.jei.JEI.removeAndHide(<mekanism:machineblock:4>);
<mekanism:machineblock:4>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Mekanism Personal chest is actually public
<mekanism:machineblock:13>.displayName = "Public chest";

// Mekanism Security desk (unraidable blocks)
mods.jei.JEI.removeAndHide(<mekanism:basicblock2:9>);
<mekanism:basicblock2:9>.addTooltip(format.red("Disabled under the Equilibrium act"));

// Mekanism recyling torches into coal, making diamonds from wood > charcoal > torch > coal > diamond
mods.mekanism.sawmill.removeRecipe(<minecraft:torch> * 4);

// Nuclearcraft Domino's special gives 29 saturation per meat (normally 4.5)
recipes.remove(<nuclearcraft:dominos>);
<nuclearcraft:dominos>.addTooltip(format.aqua("Illegal in most places, but..."));

// Thermal Signalum security lock (unraidable satchel)
mods.jei.JEI.removeAndHide(<thermalfoundation:security>);
<thermalfoundation:security>.addTooltip(format.red("Disabled under the Equilibrium act"));

// TechGuns CamoBench gives free dye through Thermal Pulverizer
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:1>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:2>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:3>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:4>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:5>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:6>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:7>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:8>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:9>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:10>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:11>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:12>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:13>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:14>);
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:wool:15>);

mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:1>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:2>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:3>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:4>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:5>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:6>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:7>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:8>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:9>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:10>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:11>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:12>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:13>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:14>, 3000);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:string> * 4, <minecraft:wool:15>, 3000);

// *** Protection bypass
// Tinker's Construct ELFN bypassing protections
mods.jei.JEI.removeAndHide(<tconstruct:throwball:1>);
<tconstruct:throwball:1>.addTooltip(format.red("Disabled under the Spawn preservation act"));
