import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;














recipes.remove(<gregtech:meta_dust:2525>);
recipes.addShapeless(<gregtech:meta_dust:2525>,[<gregtech:meta_dust:2063>,<gregtech:meta_dust:2524>]);

<recipemap:assembly_line>.findRecipe(24000, [<metaitem:stickLongSamariumMagnetic>, <metaitem:stickLongOsmiridium> * 4, <metaitem:ringOsmiridium> * 4, <metaitem:roundOsmiridium> * 8, <metaitem:wireFineEuropium> * 64, <metaitem:wireFineEuropium> * 32, <metaitem:cableGtSingleVanadiumGallium> * 2], [<liquid:soldering_alloy> * 288, <liquid:lubricant> * 500]).remove();

<recipemap:assembly_line>.recipeBuilder()
    .inputs(<metaitem:stickLongSamariumMagnetic>, <metaitem:stickLongOsmiridium> * 4, <metaitem:ringOsmiridium> * 4, <metaitem:roundOsmiridium> * 8, <metaitem:wireFineEuropium> * 64, <metaitem:wireFineEuropium> * 64,<metaitem:wireFineEuropium> * 64,<metaitem:wireFineEuropium> * 32, <metaitem:cableGtSingleVanadiumGallium> * 2)
    .EUt(24000)
    .duration(400)
    .fluidInputs(<liquid:soldering_alloy> * 576, <liquid:lubricant> * 4000)
    .outputs(<gregtech:meta_item_1:133>)
    .buildAndRegister();

// Radox Polymer * 144
<recipemap:industrial_laboratory>.findRecipe(491520, [<metaitem:dustAmogus> * 4, <metaitem:dustTinAlloy> * 4], [<liquid:purified_radox> * 144, <liquid:plasma.argon> * 500]).remove();

// Electrolytic Cell * 2
<recipemap:assembler>.findRecipe(16, [<metaitem:wireGtDoublePlatinum> * 5, <metaitem:circuit.mainframe> * 2, <metaitem:cableGtSingleTungsten>, <gcym:large_multiblock_casing:8>], null).remove();

<recipemap:assembler>.recipeBuilder()
    .inputs(<metaitem:wireGtDoublePlatinum> * 5, <metaitem:circuit.mainframe> * 2, <metaitem:cableGtSingleTungsten>, <gcym:large_multiblock_casing:8>)
    .outputs(<gcym:unique_casing:2>)
    .duration(200)
    .EUt(16)
    .buildAndRegister();
    
recipes.addShaped(<gcym:unique_casing:2>, [	[<ore:wireGtDoublePlatinum>, <ore:wireGtDoublePlatinum>, <ore:wireGtDoublePlatinum>], 	[<ore:wireGtDoublePlatinum>, <gcym:large_multiblock_casing:8>, <ore:wireGtDoublePlatinum>], 	[<ore:circuitIv>, <ore:cableGtSingleTungsten>, <ore:circuitIv>]]);

val recipesremoval = [
	<gregtech:machine_casing:10>,
	<gregtech:machine_casing:11>,
	<gregtech:machine_casing:12>,
    <gregtech:machine_casing:13>,
	<gregtech:machine_casing:14>,
    <gregtech:machine:995>,
    <gregtech:machine:996>,
    <gregtech:machine:997>,
    <gregtech:machine:998>,
    <gregtech:machine:999>,
    <gregtech:machine:993>,
    <gregtech:machine_casing:8>,
    <gregtech:meta_item_1:129>,
    <gregtech:meta_item_1:130>,
    <gregtech:meta_item_1:131>
] as IIngredient[];

// MAX Machine Hull * 1
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:14>, <metaitem:wireGtHexFloppa> * 2], [<liquid:floppa> * 2592]).remove();
// MAX Machine Casing * 1
<recipemap:assembler>.findRecipe(16, [<metaitem:plateDenseFloppa> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
// OpV Machine Hull * 1
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:13>, <metaitem:cableGtSingleQuantium> * 2], [<liquid:radox_polymer> * 288]).remove();
// OpV Machine Casing * 1
<recipemap:assembler>.findRecipe(16, [<metaitem:plateQuantum> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
// UXV Machine Hull * 1
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:12>, <metaitem:cableGtSingleBedrockium> * 2], [<liquid:radox_polymer> * 288]).remove();
// UXV Machine Casing * 1
<recipemap:assembler>.findRecipe(16, [<metaitem:plateAwakenedDraconium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
// UIV Machine Hull * 1
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:11>, <metaitem:cableGtSingleSignalium> * 2], [<liquid:radox_polymer> * 288]).remove();
// UIV Machine Casing * 1
<recipemap:assembler>.findRecipe(16, [<metaitem:plateEnderiiium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
// UEV Machine Hull * 1
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:10>, <metaitem:cableGtSingleLafium> * 2], [<liquid:radox_polymer> * 288]).remove();
// UEV Machine Casing * 1
<recipemap:assembler>.findRecipe(16, [<metaitem:plateHastelloyk243> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
// UV Machine Hull * 1
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:8>, <metaitem:cableGtSingleYttriumBariumCuprate> * 2], [<liquid:polybenzimidazole> * 288]).remove();
// UV Machine Casing * 1
<recipemap:assembler>.findRecipe(16, [<metaitem:plateDarmstadtium> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})], null).remove();
// Darmstadtium Dust * 8
<recipemap:macerator>.findRecipe(2, [<gregtech:machine_casing:8>], null).remove();
// Darmstadtium Dust * 8
<recipemap:macerator>.findRecipe(32, [<metaitem:hull.uv>], null).remove();
// Hastelloy-K243 Dust * 8
<recipemap:macerator>.findRecipe(32, [<gregtech:machine_casing:10>], null).remove();
// Enderiiium Dust * 8
<recipemap:macerator>.findRecipe(32, [<gregtech:machine_casing:11>], null).remove();
// Awakened Draconium Dust * 8
<recipemap:macerator>.findRecipe(32, [<gregtech:machine_casing:12>], null).remove();
// Quantum Dust * 8
<recipemap:macerator>.findRecipe(32, [<gregtech:machine_casing:13>], null).remove();
// Quantum Dust * 8
<recipemap:macerator>.findRecipe(32, [<gregtech:machine_casing:14>], null).remove();
// Block of Flerovium Oxygen Phosphorus Protactinide (Floppa) * 8
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:machine_casing:14>], [<liquid:oxygen> * 10152]).remove();
// Quantum Ingot * 8
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:machine_casing:13>], [<liquid:oxygen> * 1096]).remove();
// Awakened Draconium Ingot * 8
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:machine_casing:12>], [<liquid:oxygen> * 696]).remove();
// Enderiiium Ingot * 8
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:machine_casing:11>], [<liquid:oxygen> * 1672]).remove();
// Hastelloy-K243 Ingot * 8
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:machine_casing:10>], [<liquid:oxygen> * 1672]).remove();
// Darmstadtium Ingot * 8
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:machine_casing:8>], [<liquid:oxygen> * 2248]).remove();
// Bedrockium Dust * 16
<recipemap:forming_press>.findRecipe(1966080, [<metaitem:dustStone> * 64, <metaitem:dustStone> * 64, <metaitem:dustStone> * 64, <metaitem:dustStone> * 64, <metaitem:dustStone> * 64, <metaitem:dustStone> * 64], null).remove();

recipes.addShaped(<gregtech:meta_item_1:131>, [	[<ore:cableGtDoubleTungsten>, <ore:wireGtHexGraphene>, <ore:stickTungstenSteel>], 	[<ore:wireGtHexGraphene>, <ore:stickNeodymiumMagnetic>, <ore:wireGtHexGraphene>], 	[<ore:stickTungstenSteel>, <ore:wireGtHexGraphene>, <ore:cableGtDoubleTungsten>]]);
<recipemap:assembler>.recipeBuilder() .inputs(<metaitem:cableGtDoubleTungsten> * 2, <metaitem:stickTungstenSteel> * 2, <metaitem:stickNeodymiumMagnetic>, <ore:wireGtHexGraphene> * 4) .outputs(<gregtech:meta_item_1:131>) .EUt(3899) .duration(156) .buildAndRegister();
recipes.addShaped(<gregtech:meta_item_1:130>, [	[<ore:cableGtDoubleAluminium>, <ore:wireGtOctalBlackSteel>, <ore:stickTitanium>], 	[<ore:wireGtOctalBlackSteel>, <ore:stickNeodymiumMagnetic>, <ore:wireGtOctalBlackSteel>], 	[<ore:stickTitanium>, <ore:wireGtOctalBlackSteel>, <ore:cableGtDoubleAluminium>]]);
<recipemap:assembler>.recipeBuilder() .inputs(<metaitem:cableGtDoubleAluminium> * 2, <metaitem:stickTitanium> * 2, <metaitem:stickNeodymiumMagnetic>, <ore:wireGtOctalBlackSteel> * 4) .outputs(<gregtech:meta_item_1:130>) .EUt(1899) .duration(156) .buildAndRegister();
recipes.addShaped(<gregtech:meta_item_1:129>, [	[<ore:cableGtDoubleSilver>, <ore:wireGtQuadrupleElectrum>, <ore:stickStainlessSteel>], 	[<ore:wireGtQuadrupleElectrum>, <ore:stickSteelMagnetic>, <ore:wireGtQuadrupleElectrum>], 	[<ore:stickStainlessSteel>, <ore:wireGtQuadrupleElectrum>, <ore:cableGtDoubleSilver>]]);
<recipemap:assembler>.recipeBuilder() .inputs(<metaitem:cableGtDoubleSilver> * 2, <metaitem:stickStainlessSteel> * 2, <metaitem:stickSteelMagnetic>, <gregtech:wire_quadruple:277> * 4) .outputs(<gregtech:meta_item_1:129>) .duration(289) .EUt(156) .buildAndRegister();


// HV Electric Motor * 1
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtDoubleSilver> * 2, <metaitem:stickStainlessSteel> * 2, <metaitem:stickSteelMagnetic>, <metaitem:wireGtDoubleElectrum> * 4], null).remove();
// EV Electric Motor * 1
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtDoubleAluminium> * 2, <metaitem:stickTitanium> * 2, <metaitem:stickNeodymiumMagnetic>, <metaitem:wireGtDoubleKanthal> * 4], null).remove();
// IV Electric Motor * 1
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtDoubleTungsten> * 2, <metaitem:stickTungstenSteel> * 2, <metaitem:stickNeodymiumMagnetic>, <metaitem:wireGtDoubleGraphene> * 4], null).remove();
// Gold Dust * 1
<recipemap:industrial_laboratory>.findRecipe(480, [<minecraft:iron_ingot:0>], null).remove();



//Rotary Hearth Furnace
recipes.remove(<gregtech:machine:2025>);
<recipemap:assembly_line>.recipeBuilder() .inputs(<ore:circuitUhv>*4,<gregtech:machine:1001>*64,<gregtech:meta_item_1:209>*4,<ore:springNeutronium>*12,<gregtech:meta_plate:127>*32) .outputs(<gregtech:machine:2025>) .duration(499) .EUt(523999) .buildAndRegister();


// Raw Growth Medium * 4000
<recipemap:mixer>.findRecipe(7680, [<metaitem:dustMeat> * 4, <metaitem:dustSalt> * 4, <metaitem:dustCalcium> * 4, <metaitem:dustAgar> * 4], [<liquid:mutagen> * 4000]).remove();



<recipemap:lcr>.recipeBuilder() .EUt(480) .inputs(<metaitem:ingotPlutonium> * 64, <metaitem:dustUranium>*8) .fluidInputs(<liquid:air> * 80000) .fluidOutputs(<liquid:radon>*8000) .outputs(<gregtech:meta_dust:81>*64) .duration(400) .buildAndRegister();

// Holmium Ingot * 1
<recipemap:alloy_smelter>.findRecipe(1920, [<metaitem:ingotChrome>, <metaitem:ingotTechnetium22>], null).remove();







for item in recipesremoval{
	recipes.remove(item);
}

import mods.gregtech.recipe.RecipeMap;

val electrolyzer as RecipeMap = <recipemap:electrolyzer>;

electrolyzer.findRecipe(60, null, [<liquid:chloroacetone> * 1000]).remove();
electrolyzer.findRecipe(60, null, [<liquid:meth> * 1000]).remove();
electrolyzer.findRecipe(30, [<metaitem:dustCrystalMeth> * 2], null).remove();
electrolyzer.findRecipe(60, null, [<liquid:hydrogen_cyanide> * 1000]).remove();
electrolyzer.findRecipe(60, [<metaitem:dustSodiumCyanide> * 3], null).remove();
electrolyzer.findRecipe(60, null, [<liquid:benzyl_chloride> * 1000]).remove();
electrolyzer.findRecipe(60, null, [<liquid:benzyl_cyanide> * 1000]).remove();
electrolyzer.findRecipe(60, null, [<liquid:phenylacetic_acid> * 1000]).remove();
electrolyzer.findRecipe(60, null, [<liquid:phenylacetone> * 1000]).remove();
electrolyzer.findRecipe(60, null, [<liquid:acetic_anhydride> * 1000]).remove();
electrolyzer.findRecipe(60, [<metaitem:dustSodiumAcetate> * 8], null).remove();
electrolyzer.findRecipe(60, null, [<liquid:methylamine> * 1000]).remove();
electrolyzer.findRecipe(60, [<metaitem:dustSodiumMetasilicate> * 6], null).remove();
electrolyzer.findRecipe(30, [<metaitem:dustAluminiumChlorideHydrate> * 7], null).remove();
electrolyzer.findRecipe(30, [<metaitem:dustAluminiumChloride> * 4], null).remove();
electrolyzer.findRecipe(60, [<metaitem:dustSodiumBorohydride> * 6], null).remove();

val cr as RecipeMap = <recipemap:cr>;
val lcr as RecipeMap = <recipemap:lcr>;

// methane + ammonia + oxygen -> hydrogen cyanide + water
cr.recipeBuilder()
    .inputs([<metaitem:wireFinePlatinum>])
    .fluidInputs([<liquid:methane>*2000, <liquid:ammonia>*2000, <liquid:oxygen>*3000])
    .chancedOutput(<metaitem:wireFinePlatinum>*1, 9000, 200)
    .fluidOutputs([<liquid:hydrogen_cyanide>*2000, <liquid:water>*2000])
    .EUt(480)
    .duration(200)
    .circuit(1)
    .buildAndRegister();

// hydrogen cyanide + sodium hydroxide -> sodium cyanide + water
cr.recipeBuilder()
    .inputs([<metaitem:dustSodiumHydroxide>])
    .fluidInputs([<liquid:hydrogen_cyanide>*1000])
    .outputs([<metaitem:dustSodiumCyanide>])
    .fluidOutputs([<liquid:water>*1000])
    .EUt(30)
    .duration(40)
    .circuit(1)
    .buildAndRegister();

// chlorine + toluene -> benzyl chloride + hydrochloric acid
cr.recipeBuilder()
    .fluidInputs([<liquid:chlorine>*1000,<liquid:toluene>*1000])
    .fluidOutputs([<liquid:benzyl_chloride>*1000,<liquid:hydrochloric_acid>*1000])
    .EUt(120)
    .duration(120)
    .circuit(1)
    .buildAndRegister();

// sodium cyanide + benzyl chloride -> benzyl cyanide + sodium chloride
cr.recipeBuilder()
    .inputs([<metaitem:dustSodiumCyanide>])
    .fluidInputs([<liquid:benzyl_chloride>*1000])
    .outputs([<metaitem:dustSalt>])
    .fluidOutputs([<liquid:benzyl_cyanide>*1000])
    .EUt(30)
    .duration(80)
    .circuit(1)
    .buildAndRegister();

//benzyl cyanide + hydrochloric acid + water -> phenylacetic acid + ammonia
cr.recipeBuilder()
    .fluidInputs([<liquid:benzyl_cyanide>*1000,<liquid:hydrochloric_acid>*2000,<liquid:water>*2000])
    .fluidOutputs([<liquid:phenylacetic_acid>*1000,<liquid:ammonia>*1000])
    .EUt(120)
    .duration(200)
    .circuit(1)
    .buildAndRegister();

//methyl acetate + carbon monoxide -> acetic anhydride
cr.recipeBuilder()
    .fluidInputs([<liquid:methyl_acetate>*1000,<liquid:carbon_monoxide>*1500])
    .fluidOutputs([<liquid:acetic_anhydride>*1000])
    .EUt(120)
    .duration(160)
    .circuit(1)
    .buildAndRegister();

// acetic acid + sodium hydroxide -> sodium acetate
cr.recipeBuilder()
    .inputs([<metaitem:dustSodiumHydroxide>])
    .fluidInputs([<liquid:acetic_acid>*1000])
    .outputs([<metaitem:dustSodiumAcetate>])
    .EUt(30)
    .duration(40)
    .circuit(1)
    .buildAndRegister();

// PAA + acetic anhydride + sodium acetate -> P2P + water + CO2
lcr.recipeBuilder()
    .inputs([<metaItem:dustSodiumAcetate>])
    .fluidInputs([<liquid:phenylacetic_acid>*1000, <liquid:acetic_anhydride>*1000])
    .fluidOutputs([<liquid:phenylacetone>*1000, <liquid:water>*1000, <liquid:carbon_dioxide>*1000])
    .EUt(120)
    .duration(120)
    .circuit(1)
    .buildAndRegister();

//chlorine + acetone -> chloroacetone + HCl
cr.recipeBuilder()
    .fluidInputs([<liquid:acetone>*1000, <liquid:chlorine>*1000])
    .fluidOutputs([<liquid:chloroacetone>*1000, <liquid:hydrochloric_acid>*1000])
    .EUt(120)
    .duration(120)
    .circuit(1)
    .buildAndRegister();

//aluminium + HCl -> aluminium hydrochloride hexahydrate
cr.recipeBuilder()
    .inputs([<metaitem:dustAluminium>])
    .fluidInputs([<liquid:diluted_hydrochloric_acid>*3000])
    .outputs([<metaitem:dustAluminiumChlorideHydrate>])
    .fluidOutputs([<liquid:hydrogen>*1500])
    .EUt(30)
    .duration(20)
    .circuit(1)
    .buildAndRegister();

//aluminium + chlorine -> anhydrous aluminium chloride
cr.recipeBuilder()
    .inputs([<metaitem:dustAluminium>*2])
    .fluidInputs([<liquid:chlorine>*3])
    .outputs([<metaitem:dustAluminiumChloride>*2])
    .EUt(120)
    .duration(120)
    .circuit(1)
    .buildAndRegister();

//aluminium chloride hexahydrate -> anhydrous aluminium chloride
furnace.addRecipe(
    <metaitem:dustAluminiumChloride>,
    <metaitem:dustAluminiumChlorideHydrate>
);

//anhydrous aluminium chloride + benzene + chloroacetone -> phenylacetone
cr.recipeBuilder()
    .inputs([<metaitem:dustAluminiumChloride>])
    .fluidInputs([<liquid:chloroacetone>*1000, <liquid:benzene>*1000])
    .fluidOutputs([<liquid:phenylacetone>*1000, <liquid:hydrochloric_acid>*1000])
    .EUt(120)
    .duration(100)
    .circuit(1)
    .buildAndRegister();

//ammonia and methanol to methylamine: zeolite catalyst
cr.recipeBuilder()
    .inputs([<metaitem:dustSmallZeolite>])
    .fluidInputs([<liquid:methane>*1000,<liquid:ammonia>*1000])
    .fluidOutputs([<liquid:methylamine>*1000])
    .EUt(120)
    .duration(160)
    .circuit(1)
    .buildAndRegister();

//ammonia and methanol to methylamine: alumina catalyst
cr.recipeBuilder()
    .inputs([<metaitem:dustSmallBauxite>])
    .fluidInputs([<liquid:methane>*1000,<liquid:ammonia>*1000])
    .fluidOutputs([<liquid:methylamine>*750])
    .EUt(120)
    .duration(200)
    .circuit(1)
    .buildAndRegister();

//ammonia and methanol to methylamine: clay catalyst
cr.recipeBuilder()
    .inputs([<metaitem:dustSmallClay>])
    .fluidInputs([<liquid:methane>*1000,<liquid:ammonia>*1000])
    .fluidOutputs([<liquid:methylamine>*250])
    .EUt(120)
    .duration(300)
    .circuit(1)
    .buildAndRegister();

//sodium + borax + H2 + SiO2 --> sodium borohydride
lcr.recipeBuilder()
    .inputs([<metaitem:dustSodium>*16,<metaitem:dustBorax>,<metaitem:dustSiliconDioxide>*7])
    .fluidInputs([<liquid:hydrogen>*8])
    .outputs([<metaitem:dustSodiumBorohydride>*4,<metaitem:dustSodiumMetasilicate>*7])
    .EUt(480)
    .duration(240)
    .buildAndRegister();

//p2p + NaBH4 + methylamine -> meth
cr.recipeBuilder()
    .inputs([<metaitem:dustTinySodiumBorohydride>])
    .fluidInputs([<liquid:methylamine>*1000,<liquid:phenylacetone>*1000])
    .fluidOutputs([<liquid:meth>*1000, <liquid:water>*1000])
    .EUt(120)
    .duration(200)
    .circuit(1)
    .buildAndRegister();

// liquid meth to crystal meth
cr.recipeBuilder()
    .fluidInputs([<liquid:meth>*1000,<liquid:hydrochloric_acid>*1000])
    .outputs([<metaitem:dustCrystalMeth>])
    .EUt(60)
    .duration(30)
    .circuit(1)
    .buildAndRegister();