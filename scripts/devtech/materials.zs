#loader gregtech

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.ore.OrePrefix;
import mods.gregtech.ore.IOreRecipeHandler;
import mods.gregtech.material.Material;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.MaterialFlag;
import mods.gregtech.MaterialFlagBuilder;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.block.IBlockStateMatcher;
import crafttweaker.block.IBlockState;

val ingotPrefix = OrePrefix.getPrefix("ingot");
val gemPrefix = OrePrefix.getPrefix("gem");
val platePrefix = OrePrefix.getPrefix("plate");
val gearPrefix = OrePrefix.getPrefix("gear");
val blockPrefix = OrePrefix.getPrefix("block");
val dustPrefix = OrePrefix.getPrefix("dust");
val nuggetPrefix = OrePrefix.getPrefix("nugget");




// End Steel
var end_steel = MaterialBuilder(32003, "end_steel")
    .fluid("fluid", true)
    .ingot()
    .color(0xdbd986)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:end_steel>);

// Electrical Steel
var electrical_steel = MaterialBuilder(32004, "electrical_steel")
    .fluid("fluid", true)
    .ingot()
    .color(0xa7b5b4)
    .iconSet("shiny")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:electrical_steel>);

// Dark Steel
var dark_steel = MaterialBuilder(32005, "dark_steel")
    .fluid("fluid", true)
    .ingot()
    .color(0x363636)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:dark_steel>);
gearPrefix.setIgnored(<material:dark_steel>);

// Pulsating Iron
var pulsating_iron = MaterialBuilder(32006, "pulsating_iron")
    .fluid("fluid", true)
    .ingot()
    .color(0x96d996)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:pulsating_iron>);

//Conductive Iron
var conductive_iron = MaterialBuilder(32007, "conductive_iron")
    .fluid("fluid", true)
    .ingot()
    .color(0xe3b1b8)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:conductive_iron>);

// Redstone Alloy
var redstone_alloy = MaterialBuilder(32008, "redstone_alloy")
    .fluid("fluid", true)
    .ingot()
    .color(0xa31d1d)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:redstone_alloy>);

// Vibrant Alloy
var vibrant_alloy = MaterialBuilder(32009, "vibrant_alloy")
    .fluid("fluid", true)
    .ingot()
    .color(0xaade52)
    .iconSet("shiny")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:vibrant_alloy>);
gearPrefix.setIgnored(<material:vibrant_alloy>);

// Energetic Alloy
var energetic_alloy = MaterialBuilder(32010, "energetic_alloy")
    .fluid("fluid", true)
    .ingot()
    .color(0xdb8246)
    .iconSet("shiny")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:energetic_alloy>);
gearPrefix.setIgnored(<material:energetic_alloy>);

// Soularium
var soularium = MaterialBuilder(32011, "soularium")
    .fluid("fluid", true)
    .ingot()
    .color(0x6e4d2d)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:soularium>);

// Crystalline Alloy
var crystalline_alloy = MaterialBuilder(32012, "crystalline_alloy")
    .fluid("fluid", true)
    .ingot()
    .color(0xadd7db)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:crystalline_alloy>);

// Melodic Alloy
var melodic_alloy = MaterialBuilder(32013, "melodic_alloy")
    .fluid("fluid", true)
    .ingot()
    .color(0xc796d4)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:melodic_alloy>);

// Crystalline Pink Slime
var crystalline_pink_slime = MaterialBuilder(32015, "crystalline_pink_slime")
    .fluid("fluid", true)
    .ingot()
    .color(0xdf8be0)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:crystalline_pink_slime>);

// Energetic Silver
var energetic_silver = MaterialBuilder(32016, "energetic_silver")
    .fluid("fluid", true)
    .ingot()
    .color(0x73afc7)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:energetic_silver>);

// Vivid Alloy
var vivid_alloy = MaterialBuilder(32017, "vivid_alloy")
    .fluid("fluid", true)
    .ingot()
    .color(0x46b4db)
    .iconSet("metallic")
    .flags(["generate_plate", "generate_rod", "generate_gear"])
    .build();
ingotPrefix.setIgnored(<material:vivid_alloy>);


var cosmic_neutronium = MaterialBuilder(32018, "cosmic_neutronium")
    .fluid("fluid", true)
    .ingot()
    .color(0x202020)
    .iconSet("metallic")
    .flags(["generate_plate","generate_rod","generate_gear","generate_round"])
    .build();
ingotPrefix.setIgnored(<material:cosmic_neutronium>);