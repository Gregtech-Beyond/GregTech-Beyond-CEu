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

#loader gregtech
#priority 10000

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;

var meth = MaterialBuilder(32000, "meth")
    .fluid()
    .color(0xE2E2E2)
    .components([<material:carbon>*10, <material:hydrogen>*15, <material:nitrogen>*1])
    .build();

var crystalMeth = MaterialBuilder(32001, "crystal_meth")
    .dust()
    .color(0x93FBFF)
    .components([<material:meth>*1, <material:hydrochloric_acid>*1])
    .build();

var hydrogenCyanide = MaterialBuilder(32002, "hydrogen_cyanide")
    .fluid("gas")
    .colorAverage()
    .components([<material:hydrogen>*1, <material:carbon>*1, <material:nitrogen>*1])
    .build();

var sodiumCyanide = MaterialBuilder(32003, "sodium_cyanide")
    .dust()
    .colorAverage()
    .components([<material:sodium>*1, <material:carbon>*1, <material:nitrogen>*1])
    .build();

var benzylChloride = MaterialBuilder(32004, "benzyl_chloride")
    .fluid()
    .color(0xE0DCA3)
    .components([<material:carbon>*7, <material:hydrogen>*7, <material:chlorine>*1])
    .build();

var benzylCyanide = MaterialBuilder(32005, "benzyl_cyanide")
    .fluid()
    .colorAverage()
    .components([<material:carbon>*8, <material:hydrogen>*7, <material:nitrogen>*1])
    .build();

var phenylaceticAcid = MaterialBuilder(32006, "phenylacetic_acid")
    .fluid()
    .colorAverage()
    .components([<material:carbon>*8, <material:hydrogen>*8, <material:oxygen>*2])
    .build();

var phenylacetone = MaterialBuilder(32007, "phenylacetone")
    .fluid()
    .colorAverage()
    .components([<material:carbon>*9, <material:hydrogen>*10, <material:oxygen>*1])
    .build();

var aceticAnhydride = MaterialBuilder(32008, "acetic_anhydride")
    .fluid()
    .colorAverage()
    .components([<material:carbon>*4, <material:hydrogen>*6, <material:oxygen>*3])
    .build();

var sodiumAcetate = MaterialBuilder(32009, "sodium_acetate")
    .dust()
    .color(0xEFEFEF)
    .components([<material:carbon>*2, <material:hydrogen>*3, <material:sodium>*1, <material:oxygen>*2])
    .build();

var methylamine = MaterialBuilder(32010, "methylamine")
    .fluid()
    .colorAverage()
    .components([<material:carbon>*1, <material:hydrogen>*5, <material:nitrogen>*1])
    .build();

var chloroacetone = MaterialBuilder(32011, "chloroacetone")
    .fluid()
    .colorAverage()
    .components([<material:carbon>*3, <material:hydrogen>*5, <material:chlorine>*1, <material:oxygen>*1])
    .build();

var sodiumMetasilicate = MaterialBuilder(32012, "sodium_metasilicate")
    .dust()
    .color(0xF2F2F2)
    .components([<material:sodium>*2,<material:silicon>*1,<material:oxygen>*3])
    .build();

var aluminiumChloride = MaterialBuilder(32013, "aluminium_chloride")
    .dust()
    .color(0xF2F252)
    .components([<material:aluminium>*1,<material:chlorine>*3])
    .build();

var aluminiumChlorideHydrate = MaterialBuilder(32014, "aluminium_chloride_hydrate")
    .dust()
    .color(0xF2F2DD)
    .components([<material:aluminium_chloride>*1, <material:water>*6])
    .build();

var sodiumBorohydride = MaterialBuilder(32015, "sodium_borohydride")
    .dust()
    .color(0xFFFFFF)
    .components([<material:sodium>*1,<material:boron>*1,<material:hydrogen>*4])
    .build();