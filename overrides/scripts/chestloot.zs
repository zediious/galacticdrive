// *** IMPORTS ***
import crafttweaker.item.IItemStack;
import mods.ltt.LootTable;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.Conditions;

// *****************************
// *** LOOT TABLES BY PLANET ***
// *****************************

// * TABLE DEFINITIONS *
LootTweaker.newTable("gdtable:hilund");
LootTweaker.newTable("gdtable:glacia");
LootTweaker.newTable("gdtable:atum");
LootTweaker.newTable("gdtable:ryusta");
LootTweaker.newTable("gdtable:melgamar");
LootTweaker.newTable("gdtable:roika");

// *** HILUND ***

// Variable definitions
val hilund = LootTweaker.getTable("gdtable:hilund");
val hilundPool1 = hilund.addPool("hilundPool1", 2, 5, 0, 0);

// * Additions

// Techguns Crate Loot and Guns
hilundPool1.addLootTableEntry("techguns:blocks/military_crate_ammo", 55);
hilundPool1.addLootTableEntry("techguns:blocks/military_crate_explosives", 30);
//hilundPool1.addLootTableEntry("techguns:blocks/military_crate_medical", 45);
hilundPool1.addItemEntry(<techguns:pistol>, 22);
hilundPool1.addItemEntry(<techguns:thompson>, 16);
hilundPool1.addItemEntry(<techguns:m4>, 8);
hilundPool1.addItemEntry(<techguns:combatshotgun>, 8);
// Atum Relics and Heart Canister
hilundPool1.addItemEntry(<atum:nuits_vanishing>, 4);
hilundPool1.addItemEntry(<atum:anubiss_mercy>, 4);
hilundPool1.addItemEntry(<bhc:red_heart_canister>, 6);
// Cyberware Upgrades
hilundPool1.addItemEntry(<cyberware:heart_upgrades>, 4);
hilundPool1.addItemEntry(<cyberware:muscle_upgrades>, 4);
hilundPool1.addItemEntry(<cyberware:leg_upgrades>, 4);
hilundPool1.addItemEntry(<cyberware:lungs_upgrades>, 4, 4, [Functions.setMetadata(1, 1)], []);
hilundPool1.addItemEntry(<cyberware:lower_organs_upgrades>, 4, 4, [Functions.setMetadata(3, 3)], []);
// Resources
hilundPool1.addItemEntry(<techguns:itemshared>, 26, 26, [Functions.setMetadata(98, 98)], []);
hilundPool1.addItemEntry(<mekanism:dirtydust>, 32, 32, [Functions.setMetadata(2, 2)], []);
hilundPool1.addItemEntry(<mekanism:dirtydust>, 22, 22, [Functions.setMetadata(1, 1)], []);
hilundPool1.addItemEntry(<mekanism:dirtydust>, 18, 18, [Functions.setMetadata(6, 6)], []);
hilundPool1.addItemEntry(<mekanism:dirtydust>, 36, 36, [Functions.setMetadata(4, 4)], []);
// Mekanism Alloys and Circuits
hilundPool1.addItemEntry(<mekanism:reinforcedalloy>, 12);
hilundPool1.addItemEntry(<mekanism:enrichedalloy>, 20);
hilundPool1.addItemEntry(<mekanism:controlcircuit>, 20, 20, [Functions.setMetadata(1, 1)], []);
hilundPool1.addItemEntry(<mekanism:controlcircuit>, 8, 8, [Functions.setMetadata(3, 3)], []);

// ***********************
// *** GLOBAL REMOVALS ***
// ***********************

// Remove Techguns RadAway/RadX loot
mods.ltt.LootTable.removeGlobalItem("techguns:radaway");
mods.ltt.LootTable.removeGlobalItem("techguns:radpills");