//IMPORTS
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.block.IBlockState;
import mods.techguns.ChemLab;

// *** TROPICRAFT FIXES ***
recipes.remove(<tropicraft:portal_enchanter:*>);
<tropicraft:portal_enchanter>.addTooltip(format.red("Disabled under the Equilibrium act"));
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 9 as byte}, {IngredientID: 11 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 9 as byte}, {IngredientID: 12 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 10 as byte}, {IngredientID: 11 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 10 as byte}, {IngredientID: 12 as byte}], Color: 15724527, DrinkID: 6 as byte}), true);
recipes.remove(<tropicraft:drink_mixer>);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 11 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 7 as byte}), [<tropicraft:coconut>, <tropicraft:tropics_water_bucket>, <tropicraft:bamboo_mug>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 6 as byte}, {IngredientID: 13 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 4 as byte}), [<tropicraft:lime>, <minecraft:reeds>, <tropicraft:bamboo_mug>, <tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 0 as byte}, {IngredientID: 6 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 2 as byte}), [<tropicraft:lime>,<minecraft:sugar>,<tropicraft:bamboo_mug>,<tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 0 as byte}, {IngredientID: 7 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 3 as byte}), [<tropicraft:orange>, <minecraft:sugar>, <tropicraft:bamboo_mug>, <tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 14 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 5 as byte}), [<tropicraft:coffee_beans:1>, <tropicraft:tropics_water_bucket>, <tropicraft:bamboo_mug>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 0 as byte}, {IngredientID: 5 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 1 as byte}), [<tropicraft:lemon>,<minecraft:sugar>,<tropicraft:bamboo_mug>,<tropicraft:tropics_water_bucket>]);
recipes.addShapeless(<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 6 as byte}, {IngredientID: 7 as byte}, {IngredientID: 15 as byte}], Color: 16777215, DrinkID: 8 as byte}), [<tropicraft:lime>,<tropicraft:orange>,<tropicraft:bamboo_mug>,<tropicraft:tropics_water_bucket>]);
<tropicraft:cocktail>.withTag({DrinkID: 6}).addTooltip(format.red("Heard of only in legends..."));
<tropicraft:drink_mixer>.addTooltip(format.red("Disabled under the Equilibrium act"));

// * Tropicraft Manganese ore > 2 dust
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    if(event.blockState has <item:tropicraft:ore>.asBlock().definition.getStateFromMeta(3)) {
        event.drops = [<nuclearcraft:dust:11> % 100, <nuclearcraft:dust:11> % 100];
    }
});

// * Tropicraft Shaka ore > Cobblestone
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    if(event.blockState has <item:tropicraft:ore>.asBlock().definition.getStateFromMeta(4)) {
        event.drops = [<minecraft:cobblestone> % 100];
    }
});

// * Tropicraft Manganese ore removed.
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <tropicraft:ore:3>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:865>, <tropicraft:ore:3>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <tropicraft:ore:3>);
mods.tconstruct.Melting.removeRecipe(<liquid:manganese>);
recipes.removeByRecipeName("thermalfoundation:dust_16");
recipes.removeByRecipeName("thermalfoundation:ingot_24");
recipes.removeByRecipeName("thermalfoundation:ingot_26");
mods.thermalexpansion.Pulverizer.removeRecipe(<tropicraft:ore:3>);
mods.nuclearcraft.manufactory.removeRecipeWithInput(<tropicraft:ore:3>);
mods.nuclearcraft.melter.removeRecipeWithInput(<tropicraft:ore:3>);

// *** ATUM FIXES ***
recipes.remove(<atum:scarab>);
<atum:scarab>.addTooltip(format.red("Heard of only in legends..."));

// *** BETWEENLANDS FIXES ***
recipes.remove(<thebetweenlands:swamp_talisman:0>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:1>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:2>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:3>);
mods.jei.JEI.removeAndHide(<thebetweenlands:swamp_talisman:4>);
<thebetweenlands:swamp_talisman:0>.addTooltip(format.red("Heard of only in legends..."));

// *** ENDGAME BALANCE AND FIXES ***

// * TGX ChemLab recipe changed to require Betweenlands Aqua Middle Gem and 4 buckets of Refined Fuel
ChemLab.removeRecipe(<techguns:itemshared:75>,null);
ChemLab.addRecipe(<minecraft:gunpowder>*5,2,<thebetweenlands:aqua_middle_gem>*3,1,<liquid:refined_fuel>*4000,false,<techguns:itemshared:75>*1,<liquid:water>*0,17);

// Mekanism Jetpack uses advanced materials
var steelToolRod = <tconstruct:tool_rod>.withTag({Material: "steel"});
recipes.remove(<mekanism:jetpack>);
recipes.addShaped("mekanism_jetpack", <mekanism:jetpack>,
    [   [steelToolRod,            <ore:circuitAdvanced>,                 steelToolRod],
        [<ore:plateTin>,          <mekanism:gastank>.withTag({tier: 3}), <ore:plateTin>],
        [null,                    <ore:plateTin>,                        null] ]);

var singularity = <appliedenergistics2:material:47>;
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped("mekanism_teleportationcore", <mekanism:teleportationcore>,
    [   [<ore:ingotNaquadahAlloy>,    <ore:blockElectromagnet3>,      <ore:ingotNaquadahAlloy>],
        [<ore:blockElectromagnet3>,   singularity,                    <ore:blockElectromagnet3>],
        [<ore:ingotNaquadahAlloy>,    <techguns:itemshared:73>,       <ore:ingotNaquadahAlloy>] ]);

// * teleporter using ions
var steelcasing = <mekanism:basicblock:8>;
recipes.remove(<mekanism:machineblock:11>);
recipes.addShaped("mekanism_teleporter", <mekanism:machineblock:11>,
    [   [<ore:circuitAdvanced>,       <sgcraft:sgcontrollercrystal>,  <ore:circuitAdvanced>],
        [steelcasing,                 <mekanism:teleportationcore>,   steelcasing],
        [<ore:circuitAdvanced>,       <warpdrive:component:21>,       <ore:circuitAdvanced>] ]);

recipes.remove(<mekanism:basicblock:7>);
recipes.addShaped("mekanism_teleporterframe", <mekanism:basicblock:7> * 3,
    [   [<ore:ingotRefinedObsidian>,  <ore:ingotRefinedObsidian>,     <ore:ingotRefinedObsidian>],
        [<ore:ingotRefinedObsidian>,  <ore:circuitAdvanced>,          <ore:ingotRefinedObsidian>],
        [<sgcraft:stargatering>,      <sgcraft:stargatering:1>,       <sgcraft:stargatering>] ]);


// *** ROIKA/FIRST START BALANCE AND FIXES ***

// * Removals
recipes.remove(<thermalexpansion:dynamo:0>);
recipes.remove(<warpdrive:component:14>);
recipes.remove(<warpdrive:component:16>);
recipes.remove(<warpdrive:component:11>);

// * Steam Dynamo Recipe
recipes.addShapedMirrored("Steam Dynamo", 
<thermalexpansion:dynamo:0>, 
[[null, <thermalfoundation:material:513>, null],
[<minecraft:iron_ingot>, <thermalfoundation:material:256>, <minecraft:iron_ingot>], 
[<thermalfoundation:material:128>, <minecraft:redstone>, <thermalfoundation:material:128>]]);

// * WarpDrive Glass Tank Recipe
recipes.addShapedMirrored("Glass Tank", 
<warpdrive:component:14>, 
[[<minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>],
[<minecraft:glass>, null, <minecraft:glass>], 
[<minecraft:iron_ingot>, <minecraft:glass>, <minecraft:iron_ingot>]]);

// * WarpDrive Pump Recipe
recipes.addShapedMirrored("Pump", 
<warpdrive:component:16>, 
[[<techguns:itemshared:56>, <techguns:itemshared:56>, <warpdrive:component:14>],
[<warpdrive:component:15>, <minecraft:iron_ingot>, <warpdrive:component:15>], 
[<warpdrive:component:14>, <techguns:itemshared:56>, <techguns:itemshared:56>]]);

// * WarpDrive Air Canister Recipe
recipes.addShapedMirrored("Empty Air Canister", 
<warpdrive:component:11>, 
[[<minecraft:iron_bars>, <minecraft:wool>, <minecraft:iron_bars>],
[<techguns:itemshared:56>, <warpdrive:component:14>, <techguns:itemshared:56>], 
[<minecraft:iron_bars>, <minecraft:wool>, <minecraft:iron_bars>]]);

// * String from root and Green Dye Smelt recipes
recipes.addShapeless("Make String", <minecraft:string>, [<biomesoplenty:plant_1:9>]);
furnace.addRecipe(<biomesoplenty:green_dye>, <minecraft:leaves2:1>);

// *** PARASITE DROP RECIPES ***

// * Infected Flesh > Moldering Segment > Essential Segment
// To be used as a necessary part for AE2 Presses

// * Infected Flesh > Moldering Segment
recipes.addShapeless(<srparasites:lurecomponent5>, [<srparasites:assimilated_flesh>,<srparasites:assimilated_flesh>,<srparasites:assimilated_flesh>,<srparasites:assimilated_flesh>,<srparasites:assimilated_flesh>,<srparasites:assimilated_flesh>,<srparasites:assimilated_flesh>,<srparasites:assimilated_flesh>]);

// * Moldering Segment > Essential Segment
recipes.addShapeless(<srparasites:lurecomponent6>, [<srparasites:lurecomponent5>,<srparasites:lurecomponent5>,<srparasites:lurecomponent5>,<srparasites:lurecomponent5>,<srparasites:lurecomponent5>,<srparasites:lurecomponent5>,<srparasites:lurecomponent5>,<srparasites:lurecomponent5>]);

// *** OTHER RECIPES AND BALANCE ***

// * Hide AE2 Facades
val baseFacade = <appliedenergistics2:facade>.withTag({damage: 0, item: "minecraft:stone"});
for facade in <appliedenergistics2:facade>.definition.subItems {
    if (facade.hasTag && !(baseFacade.matchesExact(facade))) {
        mods.jei.JEI.hide(facade);
    }
}
<appliedenergistics2:facade>.addTooltip(format.red("Facades are not disabled in this pack; just hidden in JEI. To craft facades, place the block you want to create a facade out of in the centre of the crafting grid (3x3) and four AE2 cable anchors on all adjacent sides of that block. If no output appears then you cannot create a facade with that block."));

// * Alternative End Stone recipe
mods.mekanism.crusher.addRecipe(<minecraft:end_stone>, <nuclearcraft:gem_dust:11>);
mods.mekanism.purification.addRecipe(<ore:dustEndstone>, <gas:oxygen>, <nuclearcraft:dust:6>);

// * Redstone block tinker basin recipe
mods.tconstruct.Casting.addBasinRecipe(<minecraft:redstone_block>, null, <liquid:redstone>, 900, true);

// * WarpDrive basic hull glass is considered as Hardened glass
<ore:blockGlassHardened>.addAll(<ore:blockHull1_glass>);

// * Mekanism HDPE Pellet is considered as rubber item or plastic sheet
<ore:itemRubber>.add(<mekanism:polyethene:0>);
<ore:sheetPlastic>.add(<mekanism:polyethene:2>);
// recipes.replaceAllOccurences(<techguns:xxx>, <ore:xxx>);

// Mekanism salt block using ore dictionary
recipes.remove(<mekanism:saltblock>);
recipes.addShaped("mekanism_saltblock", <mekanism:saltblock>,
    [   [<ore:dustSalt>, <ore:dustSalt>],
        [<ore:dustSalt>, <ore:dustSalt>] ]);

// Wooden doors using oredict for planks
recipes.addShaped("vanilla_oak_door", <minecraft:wooden_door> * 3,
    [   [<ore:plankWood>,             <ore:plankWood>,            null],
        [<ore:plankWood>,             null,                       <ore:plankWood>],
        [<ore:plankWood>,             <ore:plankWood>,            null] ]);

// * Conversion between Mekanism and NuclearCraft liquids through NuclearCraft Electrolyser
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sulfur_dioxide>  * 1000, <liquid:liquidsulfurdioxide>  * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:ethene>          * 1000, <liquid:liquidethene>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sodium>          * 1000, <liquid:liquidsodium>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:tritium>         * 1000, <liquid:liquidtritium>        * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:hydrogen>        * 1000, <liquid:liquidhydrogen>       * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:oxygen>          * 1000, <liquid:liquidoxygen>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sulfur_trioxide> * 1000, <liquid:liquidsulfurtrioxide> * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:sulfuric_acid>   * 1000, <liquid:sulfuricacid>         * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:deuterium>       * 1000, <liquid:liquiddeuterium>      * 1000, null, null, null, 0.00625, 0.1, 0.0]);
mods.nuclearcraft.electrolyser.addRecipe([<liquid:lithium>         * 1000, <liquid:liquidlithium>        * 1000, null, null, null, 0.00625, 0.1, 0.0]);

// * Mekanism energy solutions brought to Thermal level
recipes.remove(<mekanism:transmitter>.withTag({tier: 0}));
recipes.addShaped("mekanism_universal_cable_0", <mekanism:transmitter>.withTag({tier: 0}) * 6,
    [   [<ore:dustRedstone>,             <ore:dustRedstone>,              <ore:dustRedstone>],
        [<ore:ingotSteel>,               <ore:blockGlass>,                <ore:ingotSteel>],
        [<ore:dustRedstone>,             <ore:dustRedstone>,              <ore:dustRedstone>] ]);

recipes.remove(<mekanism:transmitter>.withTag({tier: 1}));
recipes.addShapeless("mekanism_universal_cable_1", <mekanism:transmitter>.withTag({tier: 1}) * 3,
    [   <mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0}), <mekanism:transmitter>.withTag({tier: 0}),
        <ore:dustRedstone>,             <ore:dustRedstone>,              <ore:dustRedstone>,
        <ore:nuggetInvar>,              <ore:alloyAdvanced> ]);

recipes.remove(<mekanism:transmitter>.withTag({tier: 2}));
recipes.addShapeless("mekanism_universal_cable_2", <mekanism:transmitter>.withTag({tier: 2}) * 3,
    [   <mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1}), <mekanism:transmitter>.withTag({tier: 1}),
        <ore:nuggetElectrum>,           <ore:alloyElite> ]);

recipes.remove(<mekanism:transmitter>.withTag({tier: 3}));
recipes.addShapeless("mekanism_universal_cable_3", <mekanism:transmitter>.withTag({tier: 3}) * 3,
    [   <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}), <mekanism:transmitter>.withTag({tier: 2}),
        <ore:nuggetSignalum>,           <ore:nuggetEnderium>,           <ore:alloyUltimate> ]);

// *** CRASH AND CORRUPTIONS FIXES/REMOVALS ***

// * ICBM rejuvenation for balance and world corruption
recipes.remove(<icbmclassic:explosives:12>);
<icbmclassic:explosives:12>.addTooltip(format.red("Member of the corruptolic anonymous"));
recipes.remove(<icbmclassic:missile:12>);
<icbmclassic:missile:12>.addTooltip(format.red("Member of the corruptolic anonymous"));

// * Mekanism Robit voiding items
recipes.remove(<mekanism:robit>);
<mekanism:robit>.addTooltip(format.red("Member of the corruptolic anonymous"));

// * AppliedEnergistics2 Security Terminal causing block drop
<appliedenergistics2:security_station>.addTooltip(format.red("Randomly breaks blocks when reloading chunks!"));

// * Mekanism cardboard box
recipes.remove(<mekanism:cardboardbox>);
<mekanism:cardboardbox>.addTooltip(format.red("Member of the crasholic anonymous"));

// * ICBM Xmas grenades
recipes.remove(<icbmclassic:grenade:29>);
<icbmclassic:grenade:29>.addTooltip(format.red("Member of the crasholic anonymous"));
recipes.remove(<icbmclassic:grenade:30>);
<icbmclassic:grenade:30>.addTooltip(format.red("Member of the crasholic anonymous"));

// * OpenModularTurrets relativistic turret head
recipes.remove(<openmodularturrets:relativistic_turret>);
<openmodularturrets:relativistic_turret>.addTooltip(format.red("Member of the crasholic anonymous"));

// *** DUPLICATION AND UNFAIR COMBAT FIXES/REMOVALS ***

// * Botania Tiny potato
mods.botania.ManaInfusion.removeRecipe(<botania:tinypotato>);
<botania:tinypotato>.addTooltip(format.red("Disabled under the Equilibrium act"));

// * Mekanism Personal chest is actually public
<mekanism:machineblock:13>.displayName = "Public chest";

// * Mekanism Security desk (unraidable blocks)
recipes.remove(<mekanism:basicblock2:9>);
<mekanism:basicblock2:9>.addTooltip(format.red("Disabled under the Equilibrium act"));

// * Mekanism recyling torches into coal, making diamonds from wood > charcoal > torch > coal > diamond
mods.mekanism.sawmill.removeRecipe(<minecraft:torch> * 4);

// * Nuclearcraft Domino's special gives 29 saturation per meat (normally 4.5)
recipes.remove(<nuclearcraft:dominos>);
<nuclearcraft:dominos>.addTooltip(format.aqua("Illegal in most places, but..."));

// * Thermal Signalum security lock (unraidable satchel)
recipes.remove(<thermalfoundation:security>);
<thermalfoundation:security>.addTooltip(format.red("Disabled under the Equilibrium act"));

// * Concepts of radiation from Nuclearcraft removed
mods.nuclearcraft.manufactory.removeRecipeWithOutput([<nuclearcraft:part:6>]);
mods.nuclearcraft.infuser.removeRecipeWithOutput([<nuclearcraft:radaway_slow>]);
mods.nuclearcraft.infuser.removeRecipeWithOutput([<nuclearcraft:radaway>]);

mods.jei.JEI.removeAndHide(<nuclearcraft:part:6>);
mods.jei.JEI.removeAndHide(<nuclearcraft:geiger_counter>);
mods.jei.JEI.removeAndHide(<nuclearcraft:radaway>);
mods.jei.JEI.removeAndHide(<nuclearcraft:radaway_slow>);
mods.jei.JEI.removeAndHide(<nuclearcraft:rad_shielding:*>);
mods.jei.JEI.removeAndHide(<nuclearcraft:rad_x>);
mods.jei.JEI.removeAndHide(<nuclearcraft:radaway>);
mods.jei.JEI.removeAndHide(<nuclearcraft:helm_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:chest_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:legs_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:boots_hazmat>);

// * TechGuns CamoBench gives free dye through Thermal Pulverizer
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
